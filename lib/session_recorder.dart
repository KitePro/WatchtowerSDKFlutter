// Dart imports:
import 'dart:async';
import 'dart:typed_data';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:watchtower_sdk/src/watchtower_api.dart';

// Project imports:
import 'package:watchtower_sdk/watchtower_logger.dart';

var logger = getLogger("session_recorder");

class SessionRecorder {
  static final SessionRecorder _instance = SessionRecorder._internal();
  SessionRecorder._internal();
  factory SessionRecorder() {
    return _instance;
  }

  late final double pixelRatio;
  late final int interval;
  late final String sessionId;

  static StreamController<Uint8List?> screenshotStreamController =
      StreamController<Uint8List?>();
  static final StreamController<Uint8List?>
      screenshotLocalStoreStreamController = StreamController<Uint8List?>();

  static bool isSendToWatchtowerEnabled = true;

  void init(
      {required String sessionId,
      double pixelRatio = 1.0,
      int interval = 300}) {
    _instance.pixelRatio = pixelRatio;
    _instance.interval = interval;
    _instance.sessionId = sessionId;
    startScreenRecording(interval: interval);
  }

  Future<void> startScreenRecording({required int interval}) async {
    final screenRecordingListener = ScreenRecorderListener();
    WatchtowerScreenRecordingFlutterListener.setup(screenRecordingListener);
    final screenRecorderApi = WatchtowerScreenRecordingApi();
    screenRecorderApi.startRecorder(interval);
  }
}

class ScreenRecorderListener extends WatchtowerScreenRecordingFlutterListener {
  @override
  void takeScreenshot(Uint8List frame) {
    if (SessionRecorder.isSendToWatchtowerEnabled) {
      // Send frame to GRPC stream
      SessionRecorder.screenshotStreamController.add(frame);
    } else {
      if (!SessionRecorder.screenshotStreamController.isClosed) {
        logger.w("Close screenshot stream controller");
        SessionRecorder.screenshotStreamController.close();
        SessionRecorder.screenshotStreamController =
            StreamController<Uint8List?>();
      }
      // Send frame to Local store stream
      SessionRecorder.screenshotLocalStoreStreamController.add(frame);
    }
  }
}
