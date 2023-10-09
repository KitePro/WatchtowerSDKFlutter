// Dart imports:
import 'dart:convert';
import 'dart:io' show Platform;

// Package imports:
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

// Project imports:
import 'package:watchtower_sdk/models/app_data.dart';
import 'package:watchtower_sdk/models/device_info.dart';
import 'package:watchtower_sdk/models/user_app_data.dart';
import 'package:watchtower_sdk/store.dart';
import 'package:watchtower_sdk/watchtower_logger.dart';
import 'package:watchtower_sdk/watchtower_proto/google/protobuf/timestamp.pb.dart';

var logger = getLogger("sdk_functions");

enum LogLevel {
  unknown,
  debug,
  info,
  warning,
  error,
  fatal,
}

Future<String> _generateUserId(
    {required String appId,
    required String appBundle,
    required String appFirstRunTime}) async {
  String userId =
      md5.convert(utf8.encode("$appId:$appBundle:$appFirstRunTime")).toString();
  logger.d("Created user id: $userId");
  return userId;
}

Future<bool> isAppInitiated() async {
  var userAppData = await DataStore().getUserAppData();
  return userAppData.isAppInitiated == true;
}

Future<UserAppData> processApplicationFirstRun(
    {required AppData appData}) async {
  // Get current time
  DateTime currentTime = DateTime.now().toUtc();
  String userId = await _generateUserId(
      appId: appData.appId,
      appBundle: appData.appBundle,
      appFirstRunTime: currentTime.toIso8601String());

  DeviceInfo deviceInfo = await getDeviceInfo();
  logger.d("Get device info: ${deviceInfo.toJson()}");

  UserAppData userAppData = UserAppData(
    appFirstStartTime: currentTime.toIso8601String(),
    appId: appData.appId,
    appBundle: appData.appBundle,
    userId: userId,
    osName: deviceInfo.osName,
    deviceModel: deviceInfo.deviceModel,
    locale: deviceInfo.locale,
    isAppInitiated: true,
  );
  await DataStore().saveUserAppData(userAppData);
  return userAppData;
}

Future<UserAppData> processApplicationRun({required AppData appData}) async {
  // This function call every app start

  var userAppData = await DataStore().getUserAppData();
  if (userAppData.isAppInitiated == true) {
    // If app already initiated get data from shared prefrences
    return userAppData;
  }
  // If app not initiated, pass through application first run process
  return await processApplicationFirstRun(appData: appData);
}

Future<DeviceInfo> getSystemInfo() async {
  try {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      logger.w("Device info: $androidInfo");
      return DeviceInfo(deviceModel: "$androidInfo", osName: "android");
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return DeviceInfo(deviceModel: "$iosInfo", osName: "ios");
    } else if (Platform.isMacOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return DeviceInfo(deviceModel: "$iosInfo", osName: "macos");
    }
  } catch (e) {
    logger.w("Could not get device info");
  }
  return const DeviceInfo();
}

Future<String?> getDeviceLocale() async {
  logger.d("Get device locale");
  try {
    return await Devicelocale.currentLocale;
  } catch (e) {
    logger.w("Could not get device info");
  }
  return null;
}

Future<DeviceInfo> getDeviceInfo() async {
  DeviceInfo deviceInfo = await getSystemInfo();
  String? locale = await getDeviceLocale();
  deviceInfo = deviceInfo.copyWith(locale: locale);
  return deviceInfo;
}

String getSessionId() {
  return "session-${DateTime.now().toUtc().millisecondsSinceEpoch}";
}

Timestamp currentTimeStamp() {
  var t = Timestamp(
      seconds: fixnum.Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000));
  logger.d("Current time stamp: $t");
  return t;
}
