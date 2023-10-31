// Dart imports:
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:watchtower_sdk/src/watchtower_api.dart';

// Project imports:
import 'package:watchtower_sdk/watchtower_logger.dart';
import 'package:watchtower_sdk/watchtower_sdk.dart';

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

  StreamController<Uint8List?> screenshotStreamController =
      StreamController<Uint8List?>();
  final StreamController<Uint8List?> screenshotLocalStoreStreamController =
      StreamController<Uint8List?>();

  bool isSendToWatchtowerEnabled = true;

  void init(
      {required String sessionId,
      required GlobalKey repaintBoundary,
      double pixelRatio = 1.0,
      int interval = 100}) {
    _instance.repaintBoundary = repaintBoundary;
    _instance.pixelRatio = pixelRatio;
    _instance.interval = interval;
    _instance.sessionId = sessionId;
    runScreenShotsLoop(interval: interval);
  }

  Future<void> runScreenShotsLoop({required int interval}) async {
    while (true) {
      await Future.delayed(Duration(milliseconds: interval));
      Uint8List? frame = await takeScreenShot(repaintBoundary: repaintBoundary);

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
    print(pngBytes);
    return (pngBytes);
  }

  static void takeScreenShotDemo() async {
    final wt = WTPigeon();
    wt.sendTest("arg_message");
  }
}
