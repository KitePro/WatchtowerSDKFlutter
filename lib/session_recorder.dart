// Dart imports:
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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

  late final GlobalKey repaintBoundary;
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
      required GlobalKey repaintBoundary,
      double pixelRatio = 1.0,
      int interval = 300}) {
    _instance.repaintBoundary = repaintBoundary;
    _instance.pixelRatio = pixelRatio;
    _instance.interval = interval;
    _instance.sessionId = sessionId;
    startScreenRecording(interval: interval);
  }

  Future<void> startScreenRecording({required int interval}) async {
    if (Platform.isIOS) {
      final screenRecordingListener = ScreenRecorderListener();
      WatchtowerScreenRecordingFlutterListener.setup(screenRecordingListener);
      final screenRecorderApi = WatchtowerScreenRecordingApi();
      screenRecorderApi.startRecorder(interval);
    } else {
      while (true) {
        await Future.delayed(Duration(milliseconds: interval));
        Uint8List? frame =
            await takeScreenShot(repaintBoundary: repaintBoundary);

        if (isSendToWatchtowerEnabled) {
          // Send frame to GRPC stream
          screenshotStreamController.add(frame);
        } else {
          if (!screenshotStreamController.isClosed) {
            logger.w("Close screenshot stream controller");
            screenshotStreamController.close();
            screenshotStreamController = StreamController<Uint8List?>();
          }
          // Send frame to Local store stream
          screenshotLocalStoreStreamController.add(frame);
        }
      }
    }
  }

  Future<Uint8List?> takeScreenShot(
      {required GlobalKey repaintBoundary}) async {
    RenderRepaintBoundary boundary = repaintBoundary.currentContext!
        .findRenderObject() as RenderRepaintBoundary;

    if (kDebugMode) {
      if (boundary.debugNeedsPaint) {
        Timer(const Duration(seconds: 1),
            () => takeScreenShot(repaintBoundary: repaintBoundary));
        return null;
      }
    }

    var image = await boundary.toImage(pixelRatio: _instance.pixelRatio);
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    var pngBytes = byteData!.buffer.asUint8List();
    return (pngBytes);
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
