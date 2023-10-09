///
//  Generated code. Do not modify.
//  source: proto/application.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import '../google/protobuf/timestamp.pb.dart' as $2;

class Application extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Application',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appBundle')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appKey')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appVersion')
    ..aOM<$2.Timestamp>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createdTimestamp',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  Application._() : super();
  factory Application({
    $core.String? appId,
    $core.String? appBundle,
    $core.String? appKey,
    $core.String? appVersion,
    $2.Timestamp? createdTimestamp,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (appBundle != null) {
      _result.appBundle = appBundle;
    }
    if (appKey != null) {
      _result.appKey = appKey;
    }
    if (appVersion != null) {
      _result.appVersion = appVersion;
    }
    if (createdTimestamp != null) {
      _result.createdTimestamp = createdTimestamp;
    }
    return _result;
  }
  factory Application.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Application clone() => Application()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Application copyWith(void Function(Application) updates) =>
      super.copyWith((message) => updates(message as Application))
          as Application; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  Application createEmptyInstance() => create();
  static $pb.PbList<Application> createRepeated() => $pb.PbList<Application>();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appBundle => $_getSZ(1);
  @$pb.TagNumber(2)
  set appBundle($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAppBundle() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppBundle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set appKey($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAppKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set appVersion($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAppVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppVersion() => clearField(4);

  @$pb.TagNumber(5)
  $2.Timestamp get createdTimestamp => $_getN(4);
  @$pb.TagNumber(5)
  set createdTimestamp($2.Timestamp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCreatedTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedTimestamp() => clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureCreatedTimestamp() => $_ensure(4);
}
