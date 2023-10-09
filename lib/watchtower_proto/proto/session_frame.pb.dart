///
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import '../google/protobuf/timestamp.pb.dart' as $2;

class SessionFrame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SessionFrame',
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
            : 'userId')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appKey')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sessionId')
    ..aOM<$2.Timestamp>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameTimestamp',
        subBuilder: $2.Timestamp.create)
    ..a<$core.List<$core.int>>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frame',
        $pb.PbFieldType.OY)
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameId')
    ..hasRequiredFields = false;

  SessionFrame._() : super();
  factory SessionFrame({
    $core.String? appId,
    $core.String? appBundle,
    $core.String? userId,
    $core.String? appKey,
    $core.String? sessionId,
    $2.Timestamp? frameTimestamp,
    $core.List<$core.int>? frame,
    $core.String? frameId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (appBundle != null) {
      _result.appBundle = appBundle;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (appKey != null) {
      _result.appKey = appKey;
    }
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (frameTimestamp != null) {
      _result.frameTimestamp = frameTimestamp;
    }
    if (frame != null) {
      _result.frame = frame;
    }
    if (frameId != null) {
      _result.frameId = frameId;
    }
    return _result;
  }
  factory SessionFrame.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SessionFrame.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SessionFrame clone() => SessionFrame()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SessionFrame copyWith(void Function(SessionFrame) updates) =>
      super.copyWith((message) => updates(message as SessionFrame))
          as SessionFrame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionFrame create() => SessionFrame._();
  SessionFrame createEmptyInstance() => create();
  static $pb.PbList<SessionFrame> createRepeated() =>
      $pb.PbList<SessionFrame>();
  @$core.pragma('dart2js:noInline')
  static SessionFrame getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionFrame>(create);
  static SessionFrame? _defaultInstance;

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
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set appKey($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAppKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sessionId => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSessionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionId() => clearField(5);

  @$pb.TagNumber(6)
  $2.Timestamp get frameTimestamp => $_getN(5);
  @$pb.TagNumber(6)
  set frameTimestamp($2.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasFrameTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrameTimestamp() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureFrameTimestamp() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get frame => $_getN(6);
  @$pb.TagNumber(7)
  set frame($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasFrame() => $_has(6);
  @$pb.TagNumber(7)
  void clearFrame() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get frameId => $_getSZ(7);
  @$pb.TagNumber(8)
  set frameId($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasFrameId() => $_has(7);
  @$pb.TagNumber(8)
  void clearFrameId() => clearField(8);
}

class SessionFrameAcceptStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SessionFrameAcceptStatus',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userId')
    ..aOM<$2.Timestamp>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameTimestamp',
        subBuilder: $2.Timestamp.create)
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'frameId')
    ..hasRequiredFields = false;

  SessionFrameAcceptStatus._() : super();
  factory SessionFrameAcceptStatus({
    $core.String? userId,
    $2.Timestamp? frameTimestamp,
    $core.bool? status,
    $core.String? message,
    $core.String? frameId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (frameTimestamp != null) {
      _result.frameTimestamp = frameTimestamp;
    }
    if (status != null) {
      _result.status = status;
    }
    if (message != null) {
      _result.message = message;
    }
    if (frameId != null) {
      _result.frameId = frameId;
    }
    return _result;
  }
  factory SessionFrameAcceptStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SessionFrameAcceptStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SessionFrameAcceptStatus clone() =>
      SessionFrameAcceptStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SessionFrameAcceptStatus copyWith(
          void Function(SessionFrameAcceptStatus) updates) =>
      super.copyWith((message) => updates(message as SessionFrameAcceptStatus))
          as SessionFrameAcceptStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionFrameAcceptStatus create() => SessionFrameAcceptStatus._();
  SessionFrameAcceptStatus createEmptyInstance() => create();
  static $pb.PbList<SessionFrameAcceptStatus> createRepeated() =>
      $pb.PbList<SessionFrameAcceptStatus>();
  @$core.pragma('dart2js:noInline')
  static SessionFrameAcceptStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionFrameAcceptStatus>(create);
  static SessionFrameAcceptStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get frameTimestamp => $_getN(1);
  @$pb.TagNumber(2)
  set frameTimestamp($2.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFrameTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrameTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureFrameTimestamp() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get status => $_getBF(2);
  @$pb.TagNumber(3)
  set status($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get frameId => $_getSZ(4);
  @$pb.TagNumber(5)
  set frameId($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFrameId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFrameId() => clearField(5);
}
