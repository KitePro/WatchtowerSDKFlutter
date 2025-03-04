//
//  Generated code. Do not modify.
//  source: proto/inner_gw.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getAppByBundleKeyRequestDescriptor instead')
const GetAppByBundleKeyRequest$json = {
  '1': 'GetAppByBundleKeyRequest',
  '2': [
    {'1': 'app_bundle', '3': 1, '4': 1, '5': 9, '10': 'appBundle'},
    {'1': 'app_key', '3': 2, '4': 1, '5': 9, '10': 'appKey'},
  ],
};

/// Descriptor for `GetAppByBundleKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAppByBundleKeyRequestDescriptor = $convert.base64Decode(
    'ChhHZXRBcHBCeUJ1bmRsZUtleVJlcXVlc3QSHQoKYXBwX2J1bmRsZRgBIAEoCVIJYXBwQnVuZG'
    'xlEhcKB2FwcF9rZXkYAiABKAlSBmFwcEtleQ==');

@$core.Deprecated('Use getAppByBundleKeyResponseDescriptor instead')
const GetAppByBundleKeyResponse$json = {
  '1': 'GetAppByBundleKeyResponse',
  '2': [
    {'1': 'application', '3': 1, '4': 1, '5': 11, '6': '.watch_tower_proto.Application', '10': 'application'},
  ],
};

/// Descriptor for `GetAppByBundleKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAppByBundleKeyResponseDescriptor = $convert.base64Decode(
    'ChlHZXRBcHBCeUJ1bmRsZUtleVJlc3BvbnNlEkAKC2FwcGxpY2F0aW9uGAEgASgLMh4ud2F0Y2'
    'hfdG93ZXJfcHJvdG8uQXBwbGljYXRpb25SC2FwcGxpY2F0aW9u');

