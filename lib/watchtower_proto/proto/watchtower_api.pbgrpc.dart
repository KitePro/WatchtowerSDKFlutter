//
//  Generated code. Do not modify.
//  source: proto/watchtower_api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'watchtower_api.pb.dart' as $1;

export 'watchtower_api.pb.dart';

@$pb.GrpcServiceName('watch_tower_proto.WatchTowerApi')
class WatchTowerApiClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$1.PingRequest, $1.PingResponse>(
      '/watch_tower_proto.WatchTowerApi/Ping',
      ($1.PingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PingResponse.fromBuffer(value));
  static final _$postEvent = $grpc.ClientMethod<$1.PostEventRequst, $1.PostEventResponse>(
      '/watch_tower_proto.WatchTowerApi/PostEvent',
      ($1.PostEventRequst value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PostEventResponse.fromBuffer(value));
  static final _$postBatchEvent = $grpc.ClientMethod<$1.PostBatchEventRequst, $1.PostBatchEventResponse>(
      '/watch_tower_proto.WatchTowerApi/PostBatchEvent',
      ($1.PostBatchEventRequst value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PostBatchEventResponse.fromBuffer(value));

  WatchTowerApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.PingResponse> ping($1.PingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$1.PostEventResponse> postEvent($1.PostEventRequst request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.PostBatchEventResponse> postBatchEvent($1.PostBatchEventRequst request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postBatchEvent, request, options: options);
  }
}

@$pb.GrpcServiceName('watch_tower_proto.WatchTowerApi')
abstract class WatchTowerApiServiceBase extends $grpc.Service {
  $core.String get $name => 'watch_tower_proto.WatchTowerApi';

  WatchTowerApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PingRequest, $1.PingResponse>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PingRequest.fromBuffer(value),
        ($1.PingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PostEventRequst, $1.PostEventResponse>(
        'PostEvent',
        postEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PostEventRequst.fromBuffer(value),
        ($1.PostEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PostBatchEventRequst, $1.PostBatchEventResponse>(
        'PostBatchEvent',
        postBatchEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PostBatchEventRequst.fromBuffer(value),
        ($1.PostBatchEventResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.PingResponse> ping_Pre($grpc.ServiceCall call, $async.Future<$1.PingRequest> request) async {
    return ping(call, await request);
  }

  $async.Future<$1.PostEventResponse> postEvent_Pre($grpc.ServiceCall call, $async.Future<$1.PostEventRequst> request) async {
    return postEvent(call, await request);
  }

  $async.Future<$1.PostBatchEventResponse> postBatchEvent_Pre($grpc.ServiceCall call, $async.Future<$1.PostBatchEventRequst> request) async {
    return postBatchEvent(call, await request);
  }

  $async.Future<$1.PingResponse> ping($grpc.ServiceCall call, $1.PingRequest request);
  $async.Future<$1.PostEventResponse> postEvent($grpc.ServiceCall call, $1.PostEventRequst request);
  $async.Future<$1.PostBatchEventResponse> postBatchEvent($grpc.ServiceCall call, $1.PostBatchEventRequst request);
}
