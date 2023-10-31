import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/watchtower_api.dart',
  objcHeaderOut: 'ios/Classes/WTPigeon.h',
  objcSourceOut: 'ios/Classes/WTPigeon.m',
  dartPackageName: 'com.watchtower.plugin',
))
@HostApi()
abstract class WTPigeon {
  @ObjCSelector("sendTest:")
  void sendTest(String message);
}
