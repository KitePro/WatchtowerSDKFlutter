import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/watchtower_api.dart',
  objcHeaderOut: 'ios/Classes/WatchtowerPigeon.h',
  objcSourceOut: 'ios/Classes/WatchtowerPigeon.m',
  dartPackageName: 'com.watchtower.plugin',
))
@HostApi()
abstract class WatchtowerScreenRecordingApi {
  @ObjCSelector('startRecorder:')
  void startRecorder(int interval);
}

@FlutterApi()
abstract class WatchtowerScreenRecordingFlutterListener {
  @ObjCSelector('takeScreenshot:')
  void takeScreenshot(Uint8List frame);
}
