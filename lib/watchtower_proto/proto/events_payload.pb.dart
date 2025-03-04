//
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $2;
import 'events_payload.pbenum.dart';

export 'events_payload.pbenum.dart';

class AppStartPayload extends $pb.GeneratedMessage {
  factory AppStartPayload({
    $core.String? gaid,
    $core.String? oaid,
    $core.String? idfa,
    $core.String? locale,
    $core.String? osName,
    $core.String? deviceModel,
    $core.String? fcmToken,
    $core.String? hmsToken,
    $2.Timestamp? appStartTimestamp,
  }) {
    final $result = create();
    if (gaid != null) {
      $result.gaid = gaid;
    }
    if (oaid != null) {
      $result.oaid = oaid;
    }
    if (idfa != null) {
      $result.idfa = idfa;
    }
    if (locale != null) {
      $result.locale = locale;
    }
    if (osName != null) {
      $result.osName = osName;
    }
    if (deviceModel != null) {
      $result.deviceModel = deviceModel;
    }
    if (fcmToken != null) {
      $result.fcmToken = fcmToken;
    }
    if (hmsToken != null) {
      $result.hmsToken = hmsToken;
    }
    if (appStartTimestamp != null) {
      $result.appStartTimestamp = appStartTimestamp;
    }
    return $result;
  }
  AppStartPayload._() : super();
  factory AppStartPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppStartPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppStartPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gaid')
    ..aOS(2, _omitFieldNames ? '' : 'oaid')
    ..aOS(3, _omitFieldNames ? '' : 'idfa')
    ..aOS(4, _omitFieldNames ? '' : 'locale')
    ..aOS(5, _omitFieldNames ? '' : 'osName', protoName: 'osName')
    ..aOS(6, _omitFieldNames ? '' : 'deviceModel', protoName: 'deviceModel')
    ..aOS(7, _omitFieldNames ? '' : 'fcmToken', protoName: 'fcmToken')
    ..aOS(8, _omitFieldNames ? '' : 'hmsToken', protoName: 'hmsToken')
    ..aOM<$2.Timestamp>(9, _omitFieldNames ? '' : 'appStartTimestamp', protoName: 'appStartTimestamp', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppStartPayload clone() => AppStartPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppStartPayload copyWith(void Function(AppStartPayload) updates) => super.copyWith((message) => updates(message as AppStartPayload)) as AppStartPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppStartPayload create() => AppStartPayload._();
  AppStartPayload createEmptyInstance() => create();
  static $pb.PbList<AppStartPayload> createRepeated() => $pb.PbList<AppStartPayload>();
  @$core.pragma('dart2js:noInline')
  static AppStartPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppStartPayload>(create);
  static AppStartPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gaid => $_getSZ(0);
  @$pb.TagNumber(1)
  set gaid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGaid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGaid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oaid => $_getSZ(1);
  @$pb.TagNumber(2)
  set oaid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOaid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOaid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get idfa => $_getSZ(2);
  @$pb.TagNumber(3)
  set idfa($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdfa() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdfa() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get locale => $_getSZ(3);
  @$pb.TagNumber(4)
  set locale($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocale() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocale() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get osName => $_getSZ(4);
  @$pb.TagNumber(5)
  set osName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOsName() => $_has(4);
  @$pb.TagNumber(5)
  void clearOsName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceModel => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceModel($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceModel() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceModel() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get fcmToken => $_getSZ(6);
  @$pb.TagNumber(7)
  set fcmToken($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFcmToken() => $_has(6);
  @$pb.TagNumber(7)
  void clearFcmToken() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get hmsToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set hmsToken($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasHmsToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearHmsToken() => clearField(8);

  @$pb.TagNumber(9)
  $2.Timestamp get appStartTimestamp => $_getN(8);
  @$pb.TagNumber(9)
  set appStartTimestamp($2.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAppStartTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearAppStartTimestamp() => clearField(9);
  @$pb.TagNumber(9)
  $2.Timestamp ensureAppStartTimestamp() => $_ensure(8);
}

class CustomPayload extends $pb.GeneratedMessage {
  factory CustomPayload({
    $core.String? data,
    $core.String? name,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CustomPayload._() : super();
  factory CustomPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomPayload clone() => CustomPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomPayload copyWith(void Function(CustomPayload) updates) => super.copyWith((message) => updates(message as CustomPayload)) as CustomPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomPayload create() => CustomPayload._();
  CustomPayload createEmptyInstance() => create();
  static $pb.PbList<CustomPayload> createRepeated() => $pb.PbList<CustomPayload>();
  @$core.pragma('dart2js:noInline')
  static CustomPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomPayload>(create);
  static CustomPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class LogPayload extends $pb.GeneratedMessage {
  factory LogPayload({
    LogPayload_LOG_LEVEL? level,
    $core.String? message,
    $core.String? moduleName,
  }) {
    final $result = create();
    if (level != null) {
      $result.level = level;
    }
    if (message != null) {
      $result.message = message;
    }
    if (moduleName != null) {
      $result.moduleName = moduleName;
    }
    return $result;
  }
  LogPayload._() : super();
  factory LogPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..e<LogPayload_LOG_LEVEL>(1, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: LogPayload_LOG_LEVEL.UNKNOWN, valueOf: LogPayload_LOG_LEVEL.valueOf, enumValues: LogPayload_LOG_LEVEL.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'moduleName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogPayload clone() => LogPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogPayload copyWith(void Function(LogPayload) updates) => super.copyWith((message) => updates(message as LogPayload)) as LogPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogPayload create() => LogPayload._();
  LogPayload createEmptyInstance() => create();
  static $pb.PbList<LogPayload> createRepeated() => $pb.PbList<LogPayload>();
  @$core.pragma('dart2js:noInline')
  static LogPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogPayload>(create);
  static LogPayload? _defaultInstance;

  @$pb.TagNumber(1)
  LogPayload_LOG_LEVEL get level => $_getN(0);
  @$pb.TagNumber(1)
  set level(LogPayload_LOG_LEVEL v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get moduleName => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasModuleName() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleName() => clearField(3);
}

class OpenLinkPayload extends $pb.GeneratedMessage {
  factory OpenLinkPayload({
    $core.String? uri,
    $core.int? responseCode,
    $core.String? responseText,
  }) {
    final $result = create();
    if (uri != null) {
      $result.uri = uri;
    }
    if (responseCode != null) {
      $result.responseCode = responseCode;
    }
    if (responseText != null) {
      $result.responseText = responseText;
    }
    return $result;
  }
  OpenLinkPayload._() : super();
  factory OpenLinkPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenLinkPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OpenLinkPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'responseCode', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'responseText')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenLinkPayload clone() => OpenLinkPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenLinkPayload copyWith(void Function(OpenLinkPayload) updates) => super.copyWith((message) => updates(message as OpenLinkPayload)) as OpenLinkPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenLinkPayload create() => OpenLinkPayload._();
  OpenLinkPayload createEmptyInstance() => create();
  static $pb.PbList<OpenLinkPayload> createRepeated() => $pb.PbList<OpenLinkPayload>();
  @$core.pragma('dart2js:noInline')
  static OpenLinkPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenLinkPayload>(create);
  static OpenLinkPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get responseCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set responseCode($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get responseText => $_getSZ(2);
  @$pb.TagNumber(3)
  set responseText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseText() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseText() => clearField(3);
}

class DeviceInfoPayload extends $pb.GeneratedMessage {
  factory DeviceInfoPayload({
    DeviceInfoPayload_NETWORK_TYPE? networkType,
    $core.String? deviceManufacturer,
    $core.String? deviceModel,
    $core.String? appVersion,
    $core.String? androidSecurityPath,
    $core.String? osVersion,
    $core.String? osName,
    $core.bool? root,
    $core.int? screenWidth,
    $core.int? screenHeight,
    $core.int? screenWidthDp,
    $core.int? screenHeightDp,
    $core.String? externalDeviceId,
    $core.String? locale,
    $core.String? gaid,
    $core.String? idfa,
    $core.String? oaid,
    $core.String? fcmToken,
    $core.String? hmsToken,
  }) {
    final $result = create();
    if (networkType != null) {
      $result.networkType = networkType;
    }
    if (deviceManufacturer != null) {
      $result.deviceManufacturer = deviceManufacturer;
    }
    if (deviceModel != null) {
      $result.deviceModel = deviceModel;
    }
    if (appVersion != null) {
      $result.appVersion = appVersion;
    }
    if (androidSecurityPath != null) {
      $result.androidSecurityPath = androidSecurityPath;
    }
    if (osVersion != null) {
      $result.osVersion = osVersion;
    }
    if (osName != null) {
      $result.osName = osName;
    }
    if (root != null) {
      $result.root = root;
    }
    if (screenWidth != null) {
      $result.screenWidth = screenWidth;
    }
    if (screenHeight != null) {
      $result.screenHeight = screenHeight;
    }
    if (screenWidthDp != null) {
      $result.screenWidthDp = screenWidthDp;
    }
    if (screenHeightDp != null) {
      $result.screenHeightDp = screenHeightDp;
    }
    if (externalDeviceId != null) {
      $result.externalDeviceId = externalDeviceId;
    }
    if (locale != null) {
      $result.locale = locale;
    }
    if (gaid != null) {
      $result.gaid = gaid;
    }
    if (idfa != null) {
      $result.idfa = idfa;
    }
    if (oaid != null) {
      $result.oaid = oaid;
    }
    if (fcmToken != null) {
      $result.fcmToken = fcmToken;
    }
    if (hmsToken != null) {
      $result.hmsToken = hmsToken;
    }
    return $result;
  }
  DeviceInfoPayload._() : super();
  factory DeviceInfoPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceInfoPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceInfoPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..e<DeviceInfoPayload_NETWORK_TYPE>(1, _omitFieldNames ? '' : 'networkType', $pb.PbFieldType.OE, defaultOrMaker: DeviceInfoPayload_NETWORK_TYPE.UNKNOWN, valueOf: DeviceInfoPayload_NETWORK_TYPE.valueOf, enumValues: DeviceInfoPayload_NETWORK_TYPE.values)
    ..aOS(2, _omitFieldNames ? '' : 'deviceManufacturer')
    ..aOS(3, _omitFieldNames ? '' : 'deviceModel')
    ..aOS(4, _omitFieldNames ? '' : 'appVersion')
    ..aOS(5, _omitFieldNames ? '' : 'androidSecurityPath')
    ..aOS(6, _omitFieldNames ? '' : 'osVersion')
    ..aOS(7, _omitFieldNames ? '' : 'osName')
    ..aOB(8, _omitFieldNames ? '' : 'root')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'screenWidth', $pb.PbFieldType.O3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'screenHeight', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'screenWidthDp', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'screenHeightDp', $pb.PbFieldType.O3)
    ..aOS(13, _omitFieldNames ? '' : 'externalDeviceId', protoName: 'external_deviceId')
    ..aOS(14, _omitFieldNames ? '' : 'locale')
    ..aOS(15, _omitFieldNames ? '' : 'gaid')
    ..aOS(16, _omitFieldNames ? '' : 'idfa')
    ..aOS(17, _omitFieldNames ? '' : 'oaid')
    ..aOS(18, _omitFieldNames ? '' : 'fcmToken')
    ..aOS(19, _omitFieldNames ? '' : 'hmsToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceInfoPayload clone() => DeviceInfoPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceInfoPayload copyWith(void Function(DeviceInfoPayload) updates) => super.copyWith((message) => updates(message as DeviceInfoPayload)) as DeviceInfoPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceInfoPayload create() => DeviceInfoPayload._();
  DeviceInfoPayload createEmptyInstance() => create();
  static $pb.PbList<DeviceInfoPayload> createRepeated() => $pb.PbList<DeviceInfoPayload>();
  @$core.pragma('dart2js:noInline')
  static DeviceInfoPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceInfoPayload>(create);
  static DeviceInfoPayload? _defaultInstance;

  @$pb.TagNumber(1)
  DeviceInfoPayload_NETWORK_TYPE get networkType => $_getN(0);
  @$pb.TagNumber(1)
  set networkType(DeviceInfoPayload_NETWORK_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetworkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetworkType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceManufacturer => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceManufacturer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceManufacturer() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceManufacturer() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceModel => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceModel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set appVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get androidSecurityPath => $_getSZ(4);
  @$pb.TagNumber(5)
  set androidSecurityPath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAndroidSecurityPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearAndroidSecurityPath() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get osVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set osVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOsVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearOsVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get osName => $_getSZ(6);
  @$pb.TagNumber(7)
  set osName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOsName() => $_has(6);
  @$pb.TagNumber(7)
  void clearOsName() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get root => $_getBF(7);
  @$pb.TagNumber(8)
  set root($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRoot() => $_has(7);
  @$pb.TagNumber(8)
  void clearRoot() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get screenWidth => $_getIZ(8);
  @$pb.TagNumber(9)
  set screenWidth($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasScreenWidth() => $_has(8);
  @$pb.TagNumber(9)
  void clearScreenWidth() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get screenHeight => $_getIZ(9);
  @$pb.TagNumber(10)
  set screenHeight($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasScreenHeight() => $_has(9);
  @$pb.TagNumber(10)
  void clearScreenHeight() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get screenWidthDp => $_getIZ(10);
  @$pb.TagNumber(11)
  set screenWidthDp($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasScreenWidthDp() => $_has(10);
  @$pb.TagNumber(11)
  void clearScreenWidthDp() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get screenHeightDp => $_getIZ(11);
  @$pb.TagNumber(12)
  set screenHeightDp($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasScreenHeightDp() => $_has(11);
  @$pb.TagNumber(12)
  void clearScreenHeightDp() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get externalDeviceId => $_getSZ(12);
  @$pb.TagNumber(13)
  set externalDeviceId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasExternalDeviceId() => $_has(12);
  @$pb.TagNumber(13)
  void clearExternalDeviceId() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get locale => $_getSZ(13);
  @$pb.TagNumber(14)
  set locale($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLocale() => $_has(13);
  @$pb.TagNumber(14)
  void clearLocale() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get gaid => $_getSZ(14);
  @$pb.TagNumber(15)
  set gaid($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasGaid() => $_has(14);
  @$pb.TagNumber(15)
  void clearGaid() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get idfa => $_getSZ(15);
  @$pb.TagNumber(16)
  set idfa($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasIdfa() => $_has(15);
  @$pb.TagNumber(16)
  void clearIdfa() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get oaid => $_getSZ(16);
  @$pb.TagNumber(17)
  set oaid($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasOaid() => $_has(16);
  @$pb.TagNumber(17)
  void clearOaid() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get fcmToken => $_getSZ(17);
  @$pb.TagNumber(18)
  set fcmToken($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFcmToken() => $_has(17);
  @$pb.TagNumber(18)
  void clearFcmToken() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get hmsToken => $_getSZ(18);
  @$pb.TagNumber(19)
  set hmsToken($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasHmsToken() => $_has(18);
  @$pb.TagNumber(19)
  void clearHmsToken() => clearField(19);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
