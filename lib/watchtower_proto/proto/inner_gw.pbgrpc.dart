//
//  Generated code. Do not modify.
//  source: proto/inner_gw.proto
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

import 'inner_gw.pb.dart' as $0;

export 'inner_gw.pb.dart';

@$pb.GrpcServiceName('watch_tower_proto.InnerGW')
class InnerGWClient extends $grpc.Client {
  static final _$getAppByBundleKey = $grpc.ClientMethod<$0.GetAppByBundleKeyRequest, $0.GetAppByBundleKeyResponse>(
      '/watch_tower_proto.InnerGW/GetAppByBundleKey',
      ($0.GetAppByBundleKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAppByBundleKeyResponse.fromBuffer(value));

  InnerGWClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAppByBundleKeyResponse> getAppByBundleKey($0.GetAppByBundleKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAppByBundleKey, request, options: options);
  }
}

@$pb.GrpcServiceName('watch_tower_proto.InnerGW')
abstract class InnerGWServiceBase extends $grpc.Service {
  $core.String get $name => 'watch_tower_proto.InnerGW';

  InnerGWServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAppByBundleKeyRequest, $0.GetAppByBundleKeyResponse>(
        'GetAppByBundleKey',
        getAppByBundleKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAppByBundleKeyRequest.fromBuffer(value),
        ($0.GetAppByBundleKeyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAppByBundleKeyResponse> getAppByBundleKey_Pre($grpc.ServiceCall call, $async.Future<$0.GetAppByBundleKeyRequest> request) async {
    return getAppByBundleKey(call, await request);
  }

  $async.Future<$0.GetAppByBundleKeyResponse> getAppByBundleKey($grpc.ServiceCall call, $0.GetAppByBundleKeyRequest request);
}
