///
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:core' as $core;

// Package imports:
import 'package:protobuf/protobuf.dart' as $pb;

// Project imports:
import 'event.pb.dart' as $4;

class PingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PingRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  PingRequest._() : super();
  factory PingRequest() => create();
  factory PingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PingRequest clone() => PingRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PingRequest copyWith(void Function(PingRequest) updates) =>
      super.copyWith((message) => updates(message as PingRequest))
          as PingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PingRequest create() => PingRequest._();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => $pb.PbList<PingRequest>();
  @$core.pragma('dart2js:noInline')
  static PingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingRequest>(create);
  static PingRequest? _defaultInstance;
}

class PingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PingResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  PingResponse._() : super();
  factory PingResponse() => create();
  factory PingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PingResponse clone() => PingResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PingResponse copyWith(void Function(PingResponse) updates) =>
      super.copyWith((message) => updates(message as PingResponse))
          as PingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PingResponse create() => PingResponse._();
  PingResponse createEmptyInstance() => create();
  static $pb.PbList<PingResponse> createRepeated() =>
      $pb.PbList<PingResponse>();
  @$core.pragma('dart2js:noInline')
  static PingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PingResponse>(create);
  static PingResponse? _defaultInstance;
}

class PostEventRequst extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostEventRequst',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOM<$4.Event>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'event',
        subBuilder: $4.Event.create)
    ..hasRequiredFields = false;

  PostEventRequst._() : super();
  factory PostEventRequst({
    $4.Event? event,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    return _result;
  }
  factory PostEventRequst.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostEventRequst.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostEventRequst clone() => PostEventRequst()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostEventRequst copyWith(void Function(PostEventRequst) updates) =>
      super.copyWith((message) => updates(message as PostEventRequst))
          as PostEventRequst; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostEventRequst create() => PostEventRequst._();
  PostEventRequst createEmptyInstance() => create();
  static $pb.PbList<PostEventRequst> createRepeated() =>
      $pb.PbList<PostEventRequst>();
  @$core.pragma('dart2js:noInline')
  static PostEventRequst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostEventRequst>(create);
  static PostEventRequst? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Event get event => $_getN(0);
  @$pb.TagNumber(1)
  set event($4.Event v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  $4.Event ensureEvent() => $_ensure(0);
}

class PostEventResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostEventResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  PostEventResponse._() : super();
  factory PostEventResponse() => create();
  factory PostEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostEventResponse clone() => PostEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostEventResponse copyWith(void Function(PostEventResponse) updates) =>
      super.copyWith((message) => updates(message as PostEventResponse))
          as PostEventResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostEventResponse create() => PostEventResponse._();
  PostEventResponse createEmptyInstance() => create();
  static $pb.PbList<PostEventResponse> createRepeated() =>
      $pb.PbList<PostEventResponse>();
  @$core.pragma('dart2js:noInline')
  static PostEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostEventResponse>(create);
  static PostEventResponse? _defaultInstance;
}

class PostBatchEventRequst extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostBatchEventRequst',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..aOM<$4.BatchEvent>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'batchEvent',
        protoName: 'batchEvent',
        subBuilder: $4.BatchEvent.create)
    ..hasRequiredFields = false;

  PostBatchEventRequst._() : super();
  factory PostBatchEventRequst({
    $4.BatchEvent? batchEvent,
  }) {
    final _result = create();
    if (batchEvent != null) {
      _result.batchEvent = batchEvent;
    }
    return _result;
  }
  factory PostBatchEventRequst.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostBatchEventRequst.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostBatchEventRequst clone() =>
      PostBatchEventRequst()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostBatchEventRequst copyWith(void Function(PostBatchEventRequst) updates) =>
      super.copyWith((message) => updates(message as PostBatchEventRequst))
          as PostBatchEventRequst; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostBatchEventRequst create() => PostBatchEventRequst._();
  PostBatchEventRequst createEmptyInstance() => create();
  static $pb.PbList<PostBatchEventRequst> createRepeated() =>
      $pb.PbList<PostBatchEventRequst>();
  @$core.pragma('dart2js:noInline')
  static PostBatchEventRequst getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostBatchEventRequst>(create);
  static PostBatchEventRequst? _defaultInstance;

  @$pb.TagNumber(1)
  $4.BatchEvent get batchEvent => $_getN(0);
  @$pb.TagNumber(1)
  set batchEvent($4.BatchEvent v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBatchEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatchEvent() => clearField(1);
  @$pb.TagNumber(1)
  $4.BatchEvent ensureBatchEvent() => $_ensure(0);
}

class PostBatchEventResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostBatchEventResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'watch_tower_proto'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  PostBatchEventResponse._() : super();
  factory PostBatchEventResponse() => create();
  factory PostBatchEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostBatchEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostBatchEventResponse clone() =>
      PostBatchEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostBatchEventResponse copyWith(
          void Function(PostBatchEventResponse) updates) =>
      super.copyWith((message) => updates(message as PostBatchEventResponse))
          as PostBatchEventResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostBatchEventResponse create() => PostBatchEventResponse._();
  PostBatchEventResponse createEmptyInstance() => create();
  static $pb.PbList<PostBatchEventResponse> createRepeated() =>
      $pb.PbList<PostBatchEventResponse>();
  @$core.pragma('dart2js:noInline')
  static PostBatchEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostBatchEventResponse>(create);
  static PostBatchEventResponse? _defaultInstance;
}
