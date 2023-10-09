///
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import '../google/protobuf/timestamp.pb.dart' as $2;
import 'events_payload.pbenum.dart';

export 'events_payload.pbenum.dart';

class AppStartPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppStartPayload',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOM<$2.Timestamp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appStartTimestamp',
        subBuilder: $2.Timestamp.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'locale')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'osName')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deviceModel')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'gaid')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'idfa')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'oaid')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fcmToken')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hmsToken')
    ..hasRequiredFields = false;

  AppStartPayload._() : super();
  factory AppStartPayload({
    $2.Timestamp? appStartTimestamp,
    $core.String? locale,
    $core.String? osName,
    $core.String? deviceModel,
    $core.String? gaid,
    $core.String? idfa,
    $core.String? oaid,
    $core.String? fcmToken,
    $core.String? hmsToken,
  }) {
    final _result = create();
    if (appStartTimestamp != null) {
      _result.appStartTimestamp = appStartTimestamp;
    }
    if (locale != null) {
      _result.locale = locale;
    }
    if (osName != null) {
      _result.osName = osName;
    }
    if (deviceModel != null) {
      _result.deviceModel = deviceModel;
    }
    if (gaid != null) {
      _result.gaid = gaid;
    }
    if (idfa != null) {
      _result.idfa = idfa;
    }
    if (oaid != null) {
      _result.oaid = oaid;
    }
    if (fcmToken != null) {
      _result.fcmToken = fcmToken;
    }
    if (hmsToken != null) {
      _result.hmsToken = hmsToken;
    }
    return _result;
  }
  factory AppStartPayload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppStartPayload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppStartPayload clone() => AppStartPayload()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppStartPayload copyWith(void Function(AppStartPayload) updates) =>
      super.copyWith((message) => updates(message as AppStartPayload))
          as AppStartPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppStartPayload create() => AppStartPayload._();
  AppStartPayload createEmptyInstance() => create();
  static $pb.PbList<AppStartPayload> createRepeated() =>
      $pb.PbList<AppStartPayload>();
  @$core.pragma('dart2js:noInline')
  static AppStartPayload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppStartPayload>(create);
  static AppStartPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get appStartTimestamp => $_getN(0);
  @$pb.TagNumber(1)
  set appStartTimestamp($2.Timestamp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppStartTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppStartTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureAppStartTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get locale => $_getSZ(1);
  @$pb.TagNumber(2)
  set locale($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLocale() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocale() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get osName => $_getSZ(2);
  @$pb.TagNumber(3)
  set osName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOsName() => $_has(2);
  @$pb.TagNumber(3)
  void clearOsName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get deviceModel => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceModel($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeviceModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceModel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get gaid => $_getSZ(4);
  @$pb.TagNumber(5)
  set gaid($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasGaid() => $_has(4);
  @$pb.TagNumber(5)
  void clearGaid() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get idfa => $_getSZ(5);
  @$pb.TagNumber(6)
  set idfa($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasIdfa() => $_has(5);
  @$pb.TagNumber(6)
  void clearIdfa() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get oaid => $_getSZ(6);
  @$pb.TagNumber(7)
  set oaid($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOaid() => $_has(6);
  @$pb.TagNumber(7)
  void clearOaid() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fcmToken => $_getSZ(7);
  @$pb.TagNumber(8)
  set fcmToken($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFcmToken() => $_has(7);
  @$pb.TagNumber(8)
  void clearFcmToken() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get hmsToken => $_getSZ(8);
  @$pb.TagNumber(9)
  set hmsToken($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasHmsToken() => $_has(8);
  @$pb.TagNumber(9)
  void clearHmsToken() => clearField(9);
}

class CustomPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CustomPayload',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  CustomPayload._() : super();
  factory CustomPayload({
    $core.String? data,
    $core.String? name,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory CustomPayload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CustomPayload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CustomPayload clone() => CustomPayload()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CustomPayload copyWith(void Function(CustomPayload) updates) =>
      super.copyWith((message) => updates(message as CustomPayload))
          as CustomPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CustomPayload create() => CustomPayload._();
  CustomPayload createEmptyInstance() => create();
  static $pb.PbList<CustomPayload> createRepeated() =>
      $pb.PbList<CustomPayload>();
  @$core.pragma('dart2js:noInline')
  static CustomPayload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomPayload>(create);
  static CustomPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class LogPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'LogPayload',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..e<LogPayload_LOG_LEVEL>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'level',
        $pb.PbFieldType.OE,
        defaultOrMaker: LogPayload_LOG_LEVEL.UNKNOWN,
        valueOf: LogPayload_LOG_LEVEL.valueOf,
        enumValues: LogPayload_LOG_LEVEL.values)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'moduleName')
    ..hasRequiredFields = false;

  LogPayload._() : super();
  factory LogPayload({
    LogPayload_LOG_LEVEL? level,
    $core.String? message,
    $core.String? moduleName,
  }) {
    final _result = create();
    if (level != null) {
      _result.level = level;
    }
    if (message != null) {
      _result.message = message;
    }
    if (moduleName != null) {
      _result.moduleName = moduleName;
    }
    return _result;
  }
  factory LogPayload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LogPayload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LogPayload clone() => LogPayload()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LogPayload copyWith(void Function(LogPayload) updates) =>
      super.copyWith((message) => updates(message as LogPayload))
          as LogPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogPayload create() => LogPayload._();
  LogPayload createEmptyInstance() => create();
  static $pb.PbList<LogPayload> createRepeated() => $pb.PbList<LogPayload>();
  @$core.pragma('dart2js:noInline')
  static LogPayload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogPayload>(create);
  static LogPayload? _defaultInstance;

  @$pb.TagNumber(1)
  LogPayload_LOG_LEVEL get level => $_getN(0);
  @$pb.TagNumber(1)
  set level(LogPayload_LOG_LEVEL v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get moduleName => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModuleName() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleName() => clearField(3);
}

class OpenLinkPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OpenLinkPayload',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uri')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'responseCode',
        $pb.PbFieldType.O3)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'responseText')
    ..hasRequiredFields = false;

  OpenLinkPayload._() : super();
  factory OpenLinkPayload({
    $core.String? uri,
    $core.int? responseCode,
    $core.String? responseText,
  }) {
    final _result = create();
    if (uri != null) {
      _result.uri = uri;
    }
    if (responseCode != null) {
      _result.responseCode = responseCode;
    }
    if (responseText != null) {
      _result.responseText = responseText;
    }
    return _result;
  }
  factory OpenLinkPayload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenLinkPayload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenLinkPayload clone() => OpenLinkPayload()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenLinkPayload copyWith(void Function(OpenLinkPayload) updates) =>
      super.copyWith((message) => updates(message as OpenLinkPayload))
          as OpenLinkPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenLinkPayload create() => OpenLinkPayload._();
  OpenLinkPayload createEmptyInstance() => create();
  static $pb.PbList<OpenLinkPayload> createRepeated() =>
      $pb.PbList<OpenLinkPayload>();
  @$core.pragma('dart2js:noInline')
  static OpenLinkPayload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenLinkPayload>(create);
  static OpenLinkPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get responseCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set responseCode($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResponseCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get responseText => $_getSZ(2);
  @$pb.TagNumber(3)
  set responseText($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResponseText() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseText() => clearField(3);
}
