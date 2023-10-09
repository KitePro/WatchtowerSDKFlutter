// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:extended_shared_preferences/extended_shared_preferences.dart';

// Project imports:
import 'package:watchtower_sdk/models/user_app_data.dart';
import 'package:watchtower_sdk/watchtower_logger.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/event.pb.dart';
import 'package:watchtower_sdk/watchtower_proto/proto/session_frame.pb.dart';

var logger = getLogger("store");

const userAppDataKey = "userAppDataKey";
const evntsCacheKey = "eventsCacheKey";
const sessionRecordKey = "sessionRecordKey";

class DataStore {
  late String key;

  static final DataStore _instance = DataStore._internal();
  DataStore._internal();
  factory DataStore() {
    return _instance;
  }

  Future<void> init({required String key}) async {
    _instance.key = key;
    await ExtendedSharedPreferences.init(encryptionKey: key);
  }

  Future<void> saveUserAppData(UserAppData userAppData) async {
    logger.d("Try to save user application data: $userAppData");

    await ExtendedSharedPreferences.setStringEncrypted(key: userAppDataKey, value: jsonEncode(userAppData.toJson()));
  }

  Future<UserAppData> getUserAppData() async {
    logger.d("Try to get user application data");
    String? userAppDataSerialized = ExtendedSharedPreferences.getStringEncrypted(key: userAppDataKey);

    if (userAppDataSerialized == null || userAppDataSerialized.isEmpty) {
      return const UserAppData();
    }
    return UserAppData.fromJson(jsonDecode(userAppDataSerialized));
  }

  Future<void> clearUserAppData() async {
    logger.d("Clear local user app data");
    await ExtendedSharedPreferences.remove(key: userAppDataKey);
  }

  Future<List<Event>> saveEvent(Event event) async {
    logger.d("Save event to local cache");
    List<Event> savedEvents = await getEvents();
    savedEvents.add(event);
    logger.d("Saved events count: ${savedEvents.length}");
    await ExtendedSharedPreferences.setStringListEcrypted(
        key: evntsCacheKey, value: savedEvents.map((Event element) => element.writeToJson()).toList());
    return savedEvents;
  }

  Future<List<Event>> getEvents() async {
    logger.d("Get events from local cache");
    List<String>? savedEvents = [];
    try {
      savedEvents = await ExtendedSharedPreferences.getStringListEncrypted(key: evntsCacheKey);
    } catch (e) {
      logger.e("Could not get events: ${e.toString()}");
      return [];
    }
    if (savedEvents == null || savedEvents.isEmpty) {
      return [];
    }
    return savedEvents.map((element) => Event.fromJson(element)).toList();
  }

  Future<void> clearEvents() async {
    logger.d("Clear local events cache");
    ExtendedSharedPreferences.prefs!.remove(evntsCacheKey);
  }

  Future<void> saveSessionFrame({required String sessionId, required SessionFrame frame}) async {
    logger.d("Save session frame to local cache");
    String frmaeId = "$sessionRecordKey:$sessionId:${DateTime.now().millisecondsSinceEpoch}";
    frame.frameId = frmaeId;
    await ExtendedSharedPreferences.setStringWithTTLEncrypted(
        key: frmaeId, value: frame.writeToJson(), ttl: const Duration(days: 1));
  }

  Future<SessionFrame?> getSessionFrameById(String frameId) async {
    logger.d("Get session frame by Id: $frameId");
    String? sessionRecord = await ExtendedSharedPreferences.getStringWithTTLEncrypted(key: frameId);
    if (sessionRecord == null) {
      return null;
    }
    return SessionFrame.fromJson(sessionRecord);
  }

  Stream<SessionFrame> getAllSessionsframes() async* {
    logger.d("Get session frames from local cache");
    Iterable<String>? sessionsFrames = ExtendedSharedPreferences.getKeysWithTTL(prefix: sessionRecordKey);
    for (var frameId in sessionsFrames) {
      SessionFrame? frame = await getSessionFrameById(frameId);
      if (frame != null) {
        yield frame;
      }
    }
  }

  Future<void> clearAllSessionsFrames() async {
    logger.d("Clear all sessions records");
    Iterable<String>? sessionsFrames = ExtendedSharedPreferences.getKeysWithTTL(prefix: sessionRecordKey);
    for (var key in sessionsFrames) {
      await ExtendedSharedPreferences.remove(key: key);
    }
  }

  Future<void> deleteSessionRecordById(String frameId) async {
    logger.d("Delete session record with ID: $frameId");
    await ExtendedSharedPreferences.remove(key: frameId);
  }

  Future<Iterable<String>> getSessions() async {
    logger.d("Get saved session ids");
    String? savedSessionrecords = await ExtendedSharedPreferences.getString(key: sessionRecordKey);
    if (savedSessionrecords == null || savedSessionrecords.isEmpty) {
      logger.d("No saved records");
      return [];
    }
    Map<String, dynamic> sessions = jsonDecode(savedSessionrecords);
    return sessions.keys;
  }

  Future<void> clearSessionRecords() async {
    logger.d("Clear session records");
    await ExtendedSharedPreferences.remove(key: sessionRecordKey);
  }
}
