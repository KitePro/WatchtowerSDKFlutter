import 'dart:ui';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Future<Uint8List?> takeScreenShot(GlobalKey scr) async {
  RenderRepaintBoundary boundary =
      scr.currentContext!.findRenderObject() as RenderRepaintBoundary;
  if (boundary.debugNeedsPaint) {
    Timer(const Duration(seconds: 1), () => takeScreenShot(scr));
    return null;
  }

  var image = await boundary.toImage(pixelRatio: 0.5);
  var byteData = await image.toByteData(format: ImageByteFormat.png);
  var pngBytes = byteData!.buffer.asUint8List();
  return (pngBytes);
}
