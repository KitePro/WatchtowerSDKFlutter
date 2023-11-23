///
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $0;
import 'session_frame.pb.dart' as $1;
export 'server.pb.dart';

class WatchTowerApiClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.PingRequest, $0.PingResponse>(
      '/watch_tower_proto.WatchTowerApi/Ping',
      ($0.PingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PingResponse.fromBuffer(value));
  static final _$postEvent =
      $grpc.ClientMethod<$0.PostEventRequst, $0.PostEventResponse>(
          '/watch_tower_proto.WatchTowerApi/PostEvent',
          ($0.PostEventRequst value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostEventResponse.fromBuffer(value));
  static final _$postBatchEvent =
      $grpc.ClientMethod<$0.PostBatchEventRequst, $0.PostBatchEventResponse>(
          '/watch_tower_proto.WatchTowerApi/PostBatchEvent',
          ($0.PostBatchEventRequst value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostBatchEventResponse.fromBuffer(value));
  static final _$postSessionRecord =
      $grpc.ClientMethod<$1.SessionFrame, $1.SessionFrameAcceptStatus>(
          '/watch_tower_proto.WatchTowerApi/PostSessionRecord',
          ($1.SessionFrame value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SessionFrameAcceptStatus.fromBuffer(value));
  static final _$postSessionRecordExtended =
      $grpc.ClientMethod<$1.SessionFrameExtended, $1.SessionFrameAcceptStatus>(
          '/watch_tower_proto.WatchTowerApi/PostSessionRecordExtended',
          ($1.SessionFrameExtended value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SessionFrameAcceptStatus.fromBuffer(value));

  WatchTowerApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PingResponse> ping($0.PingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostEventResponse> postEvent(
      $0.PostEventRequst request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.PostBatchEventResponse> postBatchEvent(
      $0.PostBatchEventRequst request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postBatchEvent, request, options: options);
  }

  $grpc.ResponseStream<$1.SessionFrameAcceptStatus> postSessionRecord(
      $async.Stream<$1.SessionFrame> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$postSessionRecord, request, options: options);
  }

  $grpc.ResponseStream<$1.SessionFrameAcceptStatus> postSessionRecordExtended(
      $async.Stream<$1.SessionFrameExtended> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$postSessionRecordExtended, request,
        options: options);
  }
}

abstract class WatchTowerApiServiceBase extends $grpc.Service {
  $core.String get $name => 'watch_tower_proto.WatchTowerApi';

  WatchTowerApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PingRequest, $0.PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PingRequest.fromBuffer(value),
        ($0.PingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PostEventRequst, $0.PostEventResponse>(
        'PostEvent',
        postEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostEventRequst.fromBuffer(value),
        ($0.PostEventResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PostBatchEventRequst, $0.PostBatchEventResponse>(
            'PostBatchEvent',
            postBatchEvent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PostBatchEventRequst.fromBuffer(value),
            ($0.PostBatchEventResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SessionFrame, $1.SessionFrameAcceptStatus>(
            'PostSessionRecord',
            postSessionRecord,
            true,
            true,
            ($core.List<$core.int> value) => $1.SessionFrame.fromBuffer(value),
            ($1.SessionFrameAcceptStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SessionFrameExtended,
            $1.SessionFrameAcceptStatus>(
        'PostSessionRecordExtended',
        postSessionRecordExtended,
        true,
        true,
        ($core.List<$core.int> value) =>
            $1.SessionFrameExtended.fromBuffer(value),
        ($1.SessionFrameAcceptStatus value) => value.writeToBuffer()));
  }

  $async.Future<$0.PingResponse> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PingRequest> request) async {
    return ping(call, await request);
  }

  $async.Future<$0.PostEventResponse> postEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PostEventRequst> request) async {
    return postEvent(call, await request);
  }

  $async.Future<$0.PostBatchEventResponse> postBatchEvent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PostBatchEventRequst> request) async {
    return postBatchEvent(call, await request);
  }

  $async.Future<$0.PingResponse> ping(
      $grpc.ServiceCall call, $0.PingRequest request);
  $async.Future<$0.PostEventResponse> postEvent(
      $grpc.ServiceCall call, $0.PostEventRequst request);
  $async.Future<$0.PostBatchEventResponse> postBatchEvent(
      $grpc.ServiceCall call, $0.PostBatchEventRequst request);
  $async.Stream<$1.SessionFrameAcceptStatus> postSessionRecord(
      $grpc.ServiceCall call, $async.Stream<$1.SessionFrame> request);
  $async.Stream<$1.SessionFrameAcceptStatus> postSessionRecordExtended(
      $grpc.ServiceCall call, $async.Stream<$1.SessionFrameExtended> request);
}
