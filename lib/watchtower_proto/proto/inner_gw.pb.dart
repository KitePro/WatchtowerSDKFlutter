//
//  Generated code. Do not modify.
//  source: proto/inner_gw.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'application.pb.dart' as $4;

class GetAppByBundleKeyRequest extends $pb.GeneratedMessage {
  factory GetAppByBundleKeyRequest({
    $core.String? appBundle,
    $core.String? appKey,
  }) {
    final $result = create();
    if (appBundle != null) {
      $result.appBundle = appBundle;
    }
    if (appKey != null) {
      $result.appKey = appKey;
    }
    return $result;
  }
  GetAppByBundleKeyRequest._() : super();
  factory GetAppByBundleKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAppByBundleKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAppByBundleKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appBundle')
    ..aOS(2, _omitFieldNames ? '' : 'appKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAppByBundleKeyRequest clone() => GetAppByBundleKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAppByBundleKeyRequest copyWith(void Function(GetAppByBundleKeyRequest) updates) => super.copyWith((message) => updates(message as GetAppByBundleKeyRequest)) as GetAppByBundleKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAppByBundleKeyRequest create() => GetAppByBundleKeyRequest._();
  GetAppByBundleKeyRequest createEmptyInstance() => create();
  static $pb.PbList<GetAppByBundleKeyRequest> createRepeated() => $pb.PbList<GetAppByBundleKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAppByBundleKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAppByBundleKeyRequest>(create);
  static GetAppByBundleKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appBundle => $_getSZ(0);
  @$pb.TagNumber(1)
  set appBundle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppBundle() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppBundle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set appKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppKey() => clearField(2);
}

class GetAppByBundleKeyResponse extends $pb.GeneratedMessage {
  factory GetAppByBundleKeyResponse({
    $4.Application? application,
  }) {
    final $result = create();
    if (application != null) {
      $result.application = application;
    }
    return $result;
  }
  GetAppByBundleKeyResponse._() : super();
  factory GetAppByBundleKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAppByBundleKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAppByBundleKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOM<$4.Application>(1, _omitFieldNames ? '' : 'application', subBuilder: $4.Application.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAppByBundleKeyResponse clone() => GetAppByBundleKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAppByBundleKeyResponse copyWith(void Function(GetAppByBundleKeyResponse) updates) => super.copyWith((message) => updates(message as GetAppByBundleKeyResponse)) as GetAppByBundleKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAppByBundleKeyResponse create() => GetAppByBundleKeyResponse._();
  GetAppByBundleKeyResponse createEmptyInstance() => create();
  static $pb.PbList<GetAppByBundleKeyResponse> createRepeated() => $pb.PbList<GetAppByBundleKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAppByBundleKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAppByBundleKeyResponse>(create);
  static GetAppByBundleKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Application get application => $_getN(0);
  @$pb.TagNumber(1)
  set application($4.Application v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => clearField(1);
  @$pb.TagNumber(1)
  $4.Application ensureApplication() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
