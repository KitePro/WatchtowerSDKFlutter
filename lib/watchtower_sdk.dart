library watchtower_sdk;

// Dart imports:
import 'dart:typed_data';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import "package:logger/logger.dart" as logLib;
import 'package:grpc/grpc.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:watchtower_sdk/models/app_data.dart';
import 'package:watchtower_sdk/models/user_app_data.dart';
import 'package:watchtower_sdk/sdk_functions.dart';
import 'package:watchtower_sdk/session_recorder.dart';
import 'package:watchtower_sdk/store.dart';
import 'package:watchtower_sdk/watchtower_connector.dart';
import 'package:watchtower_sdk/watchtower_logger.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/event.pb.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/events_payload.pb.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/server.pbgrpc.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/session_frame.pb.dart';

var logger = getLogger("watchtower_sdk");

final inmemoryEventStore = [];

// Set to 0 to send every event separetly
const eventsBatchSize = 0;

class Watchtower {
  Watchtower._();

  // Instance data
  static bool isInitDone = false;
  static late AppData appData;
  static late UserAppData userAppData;
  static String? gaid = "";
  static String? oaid = "";
  static String? idfa = "";
  static String sessionId = "";
  static late WatchtowerConnector watchtowerConnector;
  static final sessionRecoreder = SessionRecorder();
  static late bool isSessionRecorderEnabeled;

  // Init SDK singletone instance
  static Future<void> init({
    required String appId,
    required String appKey,
    GlobalKey? repaintBoundary,
    String host = 'watchtower.cyou',
    int port = 8008,
    bool enableSessionRecorder = false,
    bool useTls = true,
    int sessionRecordIntervalInMs = 100,
  }) async {
    validateWatchtowerParams(
        enableSessionRecorder: enableSessionRecorder,
        repaintBoundary: repaintBoundary,
        sessionRecordIntervalInMs: sessionRecordIntervalInMs);
    await getDeviceInfo();

    // If SDK already initialized skip init process
    if (isInitDone) {
      logger.d("Watchtower sdk already inited");
      return;
    }

    //Create AppData
    final packageInfo = await PackageInfo.fromPlatform();
    appData = AppData(
      appId: appId,
      appBundle: packageInfo.packageName,
      appVersion: packageInfo.version,
      appKey: appKey,
    );

    logger.d("packageInfo.packageName: ${packageInfo.packageName}");
    logger.d("packageInfo.version: ${packageInfo.version}");
    // Creaete watchtower connector
    watchtowerConnector = WatchtowerConnector(
        host: host,
        port: port,
        useTls: useTls,
        onConnectionStateChanged: _onWatchtowerConnectionStateChanged);
    await watchtowerConnector.createChannel();

    // Init data store
    await DataStore().init(key: appData.appKey);

    // DeviceInfo deviceInfo = await getDeviceInfo();
    logger.d("Init watchtower sdk");
    appData = appData;
    gaid = null;
    oaid = null;
    idfa = null;
    sessionId = getSessionId();

    userAppData = await processApplicationRun(appData: appData);
    logger.d("Application run process finished");
    logger.d(userAppData.toJson());

    isInitDone = true;
    sendAppStartEvent();
    await _processLocaleStoreSavedEvents();

    isSessionRecorderEnabeled = enableSessionRecorder;
    if (repaintBoundary != null && enableSessionRecorder) {
      _initSessionrecorder(repaintBoundary, sessionRecordIntervalInMs);
    }
  }

  static void validateWatchtowerParams(
      {bool? enableSessionRecorder,
      GlobalKey? repaintBoundary,
      int? sessionRecordIntervalInMs}) {
    if (enableSessionRecorder != null && enableSessionRecorder) {
      assert(repaintBoundary != null);
    }

    if (sessionRecordIntervalInMs != null) {
      assert(sessionRecordIntervalInMs >= 100,
          "Session record interval should be greater or equal to 100 ms");
      assert(sessionRecordIntervalInMs <= 10000,
          "Session record interval should be less or equal to 10000 ms");
      assert(repaintBoundary != null);
    }
  }

  static Future<void> _initSessionrecorder(
      GlobalKey repaintBoundary, int sessionRecordIntervalInMs) async {
    logger.d("Init sessions recorder");
    sessionRecoreder.init(
        sessionId: sessionId,
        repaintBoundary: repaintBoundary,
        pixelRatio: 1.0,
        interval: sessionRecordIntervalInMs);

    // Subsctibe to a screenshot local store stream to save screenshot if GRPC server unavailable
    logger.d("Enable saving session frames to local store");
    sessionRecoreder.screenshotLocalStoreStreamController.stream
        .listen((pngData) {
      DataStore().saveSessionFrame(
          sessionId: sessionId,
          frame: SessionFrame(
              appId: appData.appId,
              appBundle: appData.appBundle,
              appKey: appData.appKey,
              userId: userAppData.userId,
              sessionId: sessionId,
              frameTimestamp: currentTimeStamp(),
              frame: pngData));
    });

    await _startSessionRecordTransmition();

    logger.d("Check session frames saved to local store");
    ResponseStream<SessionFrameAcceptStatus> rsps = watchtowerConnector.stub
        .postSessionRecord(DataStore().getAllSessionsframes());
    try {
      await for (var item in rsps) {
        logger.d("Stream response: $item");
        DataStore().deleteSessionRecordById(item.frameId);
      }
    } on GrpcError catch (_) {
      logger.d("Cached frames send done");
    }
  }

  static Future<void> _processLocaleStoreSavedEvents() async {
    logger.d("Check is inmemory event exists");
    if (inmemoryEventStore.isNotEmpty) {
      for (Event e in inmemoryEventStore) {
        _saveEventToBatch(event: e);
      }
      inmemoryEventStore.clear();
    }
  }

  static Future<void> updateUserAppData(
      {String? gaid,
      String? oaid,
      String? idfa,
      String? fcmToken,
      String? hmsToken}) async {
    gaid = gaid ?? gaid;
    oaid = oaid ?? oaid;
    idfa = idfa ?? idfa;
    fcmToken = fcmToken ?? fcmToken;
    hmsToken = hmsToken ?? hmsToken;

    logger.d("Update userAppData FCM: $fcmToken");
    DataStore dataStore = DataStore();
    UserAppData savedUserAppData = await dataStore.getUserAppData();
    logger.d("Received userAppData: ${userAppData.toJson()}");

    savedUserAppData = savedUserAppData.copyWith(
        gaid: gaid,
        oaid: oaid,
        idfa: idfa,
        fcmToken: fcmToken,
        hmsToken: hmsToken);

    logger.d("Updated user data: ${userAppData.toJson()}");
    await dataStore.saveUserAppData(savedUserAppData);
    userAppData = savedUserAppData;
  }

  static Future<void> sendAppStartEvent() async {
    logger.d("Send application start event");
    try {
      Event event = Event(
        sessionId: sessionId,
        eventType: Event_EVENT_TYPE.APP_START,
        eventTimestamp: currentTimeStamp(),
        appStartPayload: AppStartPayload(
          gaid: gaid,
          oaid: oaid,
          idfa: idfa,
          locale: userAppData.locale,
          osName: userAppData.osName,
          deviceModel: userAppData.deviceModel,
          fcmToken: userAppData.fcmToken,
          hmsToken: userAppData.hmsToken,
          appStartTimestamp: currentTimeStamp(),
        ),
      );
      logger.d("Created application start event: ${event.toProto3Json()}");
      logger.d(
          "Created application start event fcmToken: ${event.appStartPayload.fcmToken}");
      _saveEventToBatch(event: event);
    } catch (e) {
      logger.e("Error during send app start event: $e");
    }
  }

  static Future<void> sendLogEvent(
      {logLib.Level? level, String? message, String? moduleName}) async {
    logger.d("Send log event");

    LogPayload_LOG_LEVEL.DEBUG;
    try {
      Event event = Event(
        sessionId: sessionId,
        eventType: Event_EVENT_TYPE.LOG,
        eventTimestamp: currentTimeStamp(),
        logPayload: LogPayload(
            level: _logLevelToProtoLogLevel(level),
            message: message,
            moduleName: moduleName),
      );
      logger.d("Created log event: ${event.toProto3Json()}");
      _saveEventToBatch(event: event);
    } catch (e) {
      logger.e("Error during send log event: $e");
    }
  }

  static Future<void> sendCustomEvent(
      {required String name, required String data}) async {
    logger.d("Send custom event");
    try {
      Event event = Event(
        sessionId: sessionId,
        eventType: Event_EVENT_TYPE.CUSTOM,
        eventTimestamp: currentTimeStamp(),
        customPayload: CustomPayload(
          name: name,
          data: data,
        ),
      );
      logger.d("Created custom event: ${event.toProto3Json()}");
      _saveEventToBatch(event: event);
    } catch (e) {
      logger.e("Error during send custom event: $e");
    }
  }

  static Future<void> sendOpenLinkEvent(
      {required String uri, int? responseCode, String? responseText}) async {
    logger.d("Send open link event");
    try {
      Event event = Event(
        sessionId: sessionId,
        eventType: Event_EVENT_TYPE.OPEN_LINK,
        eventTimestamp: currentTimeStamp(),
        openLinkPayload: OpenLinkPayload(
            uri: uri, responseCode: responseCode, responseText: responseText),
      );
      logger.d("Created open link event: ${event.toProto3Json()}");
      _saveEventToBatch(event: event);
    } catch (e) {
      logger.e("Error during send open link event: $e");
    }
  }

  static Future<void> clearData() async {
    logger.w("Clear watchtower app data");
    await DataStore().clearUserAppData();
    await DataStore().clearEvents();
  }

  static logLib.Logger getWatchtoweLogger(String? moduleName) {
    return getLogger(moduleName,
        output: logLib.MultiOutput([
          logLib.ConsoleOutput(),
          WatchtowerOutput(eventHandler: sendLogEvent),
        ]));
  }

  static void _onWatchtowerConnectionStateChanged(bool state) {
    if (isSessionRecorderEnabeled) {
      logger.d("Update session recorder send to watchtower state tp $state");
      sessionRecoreder.isSendToWatchtowerEnabled = state;

      // If connection to watchtower restore
      if (state == true) {
        logger.d("reassign stream reader");
        if (!sessionRecoreder.screenshotStreamController.hasListener) {
          _startSessionRecordTransmition();
        }
      }
    }
  }

  static Future<void> _startSessionRecordTransmition() async {
    logger.d("Start session record transmition");
    try {
      watchtowerConnector.stub.postSessionRecord(
          sessionRecoreder.screenshotStreamController.stream.map(
              ((Uint8List? pngData) => SessionFrame(
                  appId: appData.appId,
                  appBundle: appData.appBundle,
                  appKey: appData.appKey,
                  userId: userAppData.userId,
                  sessionId: sessionId,
                  frameTimestamp: currentTimeStamp(),
                  frame: pngData))),
          options: CallOptions(timeout: const Duration(hours: 1)));
    } catch (e) {
      logger.e("Stream error: $e");
    }
  }

  static Future<void> _postBatchEvents({required List<Event> events}) async {
    logger.d("Post batch events");
    PostBatchEventResponse rsp = await watchtowerConnector.stub.postBatchEvent(
      PostBatchEventRequst(
        batchEvent: BatchEvent(
            appBundle: appData.appBundle,
            appId: appData.appId,
            appKey: appData.appKey,
            userId: userAppData.userId,
            appVersion: appData.appVersion,
            events: events),
      ),
    );
    logger.d("Batch events sent to watchtower. Response is: $rsp");
  }

  static Future<void> _saveEventToBatch({required Event event}) async {
    logger.d("Save event to batch: ${event.toProto3Json()}");
    if (!isInitDone) {
      logger.d("Watchtower is not init yet. Save event in memory");
      inmemoryEventStore.add(event);
      return;
    }

    List<Event> savedEvents = await DataStore().saveEvent(event);
    if (savedEvents.length > eventsBatchSize) {
      try {
        if (isInitDone) {
          // If SDK is initialized post events
          await _postBatchEvents(events: savedEvents);
          await DataStore().clearEvents();
        } else {
          // Else skip posting and clearing events batch
          logger.w("SDK not initialized yet");
        }
      } on GrpcError catch (e) {
        if (e.code == 3) {
          // If pass incorrect arguments clean all events in cache
          logger.w("Invalid argumets. Error: ${e.toString()} ${e.code}");
        } else {
          logger.e("GRPC Error. Error: ${e.toString()} ${e.code}");
        }
      } catch (e) {
        logger.e("Could not send events to watchtower. Error: ${e.toString()}");
      }
    }
  }

  static LogPayload_LOG_LEVEL _logLevelToProtoLogLevel(logLib.Level? level) {
    switch (level) {
      case (logLib.Level.debug):
        return LogPayload_LOG_LEVEL.DEBUG;

      case (logLib.Level.info):
        return LogPayload_LOG_LEVEL.INFO;

      case (logLib.Level.warning):
        return LogPayload_LOG_LEVEL.WARNING;

      case (logLib.Level.error):
        return LogPayload_LOG_LEVEL.ERROR;

      default:
        return LogPayload_LOG_LEVEL.UNKNOWN;
    }
  }
  
}


