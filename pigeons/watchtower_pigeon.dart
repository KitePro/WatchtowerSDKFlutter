import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/watchtower_api.dart',
  objcHeaderOut: 'ios/Classes/WTPigeon.h',
  objcSourceOut: 'ios/Classes/WTPigeon.m',
  dartPackageName: 'com.watchtower.plugin',
))
@HostApi()
abstract class WTPigeonHost {
  @ObjCSelector('startRecorder:')
  void startRecorder(int interval);
}

@FlutterApi()
abstract class WTPigeonFlutter {
  @ObjCSelector('takeScreenshot:')
  void takeScreenshot(Uint8List frame);
}
