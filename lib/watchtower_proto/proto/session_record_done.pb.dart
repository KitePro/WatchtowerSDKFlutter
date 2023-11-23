///
//  Generated code. Do not modify.
//  source: proto/session_record_done.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SessionRecordDone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SessionRecordDone', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionRecordPath')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bucketName')
    ..hasRequiredFields = false
  ;

  SessionRecordDone._() : super();
  factory SessionRecordDone({
    $core.String? sessionRecordPath,
    $core.String? bucketName,
  }) {
    final _result = create();
    if (sessionRecordPath != null) {
      _result.sessionRecordPath = sessionRecordPath;
    }
    if (bucketName != null) {
      _result.bucketName = bucketName;
    }
    return _result;
  }
  factory SessionRecordDone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionRecordDone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionRecordDone clone() => SessionRecordDone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionRecordDone copyWith(void Function(SessionRecordDone) updates) => super.copyWith((message) => updates(message as SessionRecordDone)) as SessionRecordDone; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionRecordDone create() => SessionRecordDone._();
  SessionRecordDone createEmptyInstance() => create();
  static $pb.PbList<SessionRecordDone> createRepeated() => $pb.PbList<SessionRecordDone>();
  @$core.pragma('dart2js:noInline')
  static SessionRecordDone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionRecordDone>(create);
  static SessionRecordDone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionRecordPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionRecordPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionRecordPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionRecordPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bucketName => $_getSZ(1);
  @$pb.TagNumber(2)
  set bucketName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBucketName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBucketName() => clearField(2);
}

