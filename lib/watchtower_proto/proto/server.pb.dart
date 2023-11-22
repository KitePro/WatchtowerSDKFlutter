//
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'event.pb.dart' as $4;

class PingRequest extends $pb.GeneratedMessage {
  factory PingRequest() => create();
  PingRequest._() : super();
  factory PingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingRequest clone() => PingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingRequest copyWith(void Function(PingRequest) updates) => super.copyWith((message) => updates(message as PingRequest)) as PingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingRequest create() => PingRequest._();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => $pb.PbList<PingRequest>();
  @$core.pragma('dart2js:noInline')
  static PingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingRequest>(create);
  static PingRequest? _defaultInstance;
}

class PingResponse extends $pb.GeneratedMessage {
  factory PingResponse() => create();
  PingResponse._() : super();
  factory PingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PingResponse clone() => PingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PingResponse copyWith(void Function(PingResponse) updates) => super.copyWith((message) => updates(message as PingResponse)) as PingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PingResponse create() => PingResponse._();
  PingResponse createEmptyInstance() => create();
  static $pb.PbList<PingResponse> createRepeated() => $pb.PbList<PingResponse>();
  @$core.pragma('dart2js:noInline')
  static PingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PingResponse>(create);
  static PingResponse? _defaultInstance;
}

class PostEventRequst extends $pb.GeneratedMessage {
  factory PostEventRequst({
    $4.Event? event,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  PostEventRequst._() : super();
  factory PostEventRequst.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostEventRequst.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostEventRequst', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOM<$4.Event>(1, _omitFieldNames ? '' : 'event', subBuilder: $4.Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostEventRequst clone() => PostEventRequst()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostEventRequst copyWith(void Function(PostEventRequst) updates) => super.copyWith((message) => updates(message as PostEventRequst)) as PostEventRequst;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostEventRequst create() => PostEventRequst._();
  PostEventRequst createEmptyInstance() => create();
  static $pb.PbList<PostEventRequst> createRepeated() => $pb.PbList<PostEventRequst>();
  @$core.pragma('dart2js:noInline')
  static PostEventRequst getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostEventRequst>(create);
  static PostEventRequst? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Event get event => $_getN(0);
  @$pb.TagNumber(1)
  set event($4.Event v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  $4.Event ensureEvent() => $_ensure(0);
}

class PostEventResponse extends $pb.GeneratedMessage {
  factory PostEventResponse() => create();
  PostEventResponse._() : super();
  factory PostEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostEventResponse clone() => PostEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostEventResponse copyWith(void Function(PostEventResponse) updates) => super.copyWith((message) => updates(message as PostEventResponse)) as PostEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostEventResponse create() => PostEventResponse._();
  PostEventResponse createEmptyInstance() => create();
  static $pb.PbList<PostEventResponse> createRepeated() => $pb.PbList<PostEventResponse>();
  @$core.pragma('dart2js:noInline')
  static PostEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostEventResponse>(create);
  static PostEventResponse? _defaultInstance;
}

class PostBatchEventRequst extends $pb.GeneratedMessage {
  factory PostBatchEventRequst({
    $4.BatchEvent? batchEvent,
  }) {
    final $result = create();
    if (batchEvent != null) {
      $result.batchEvent = batchEvent;
    }
    return $result;
  }
  PostBatchEventRequst._() : super();
  factory PostBatchEventRequst.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostBatchEventRequst.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostBatchEventRequst', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOM<$4.BatchEvent>(1, _omitFieldNames ? '' : 'batchEvent', protoName: 'batchEvent', subBuilder: $4.BatchEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostBatchEventRequst clone() => PostBatchEventRequst()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostBatchEventRequst copyWith(void Function(PostBatchEventRequst) updates) => super.copyWith((message) => updates(message as PostBatchEventRequst)) as PostBatchEventRequst;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostBatchEventRequst create() => PostBatchEventRequst._();
  PostBatchEventRequst createEmptyInstance() => create();
  static $pb.PbList<PostBatchEventRequst> createRepeated() => $pb.PbList<PostBatchEventRequst>();
  @$core.pragma('dart2js:noInline')
  static PostBatchEventRequst getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostBatchEventRequst>(create);
  static PostBatchEventRequst? _defaultInstance;

  @$pb.TagNumber(1)
  $4.BatchEvent get batchEvent => $_getN(0);
  @$pb.TagNumber(1)
  set batchEvent($4.BatchEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBatchEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatchEvent() => clearField(1);
  @$pb.TagNumber(1)
  $4.BatchEvent ensureBatchEvent() => $_ensure(0);
}

class PostBatchEventResponse extends $pb.GeneratedMessage {
  factory PostBatchEventResponse() => create();
  PostBatchEventResponse._() : super();
  factory PostBatchEventResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostBatchEventResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostBatchEventResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostBatchEventResponse clone() => PostBatchEventResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostBatchEventResponse copyWith(void Function(PostBatchEventResponse) updates) => super.copyWith((message) => updates(message as PostBatchEventResponse)) as PostBatchEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostBatchEventResponse create() => PostBatchEventResponse._();
  PostBatchEventResponse createEmptyInstance() => create();
  static $pb.PbList<PostBatchEventResponse> createRepeated() => $pb.PbList<PostBatchEventResponse>();
  @$core.pragma('dart2js:noInline')
  static PostBatchEventResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostBatchEventResponse>(create);
  static PostBatchEventResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
