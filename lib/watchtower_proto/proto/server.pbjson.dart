///
//  Generated code. Do not modify.
//  source: proto/server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = const {
  '1': 'PingRequest',
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor =
    $convert.base64Decode('CgtQaW5nUmVxdWVzdA==');
@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = const {
  '1': 'PingResponse',
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor =
    $convert.base64Decode('CgxQaW5nUmVzcG9uc2U=');
@$core.Deprecated('Use postEventRequstDescriptor instead')
const PostEventRequst$json = const {
  '1': 'PostEventRequst',
  '2': const [
    const {
      '1': 'event',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.Event',
      '10': 'event'
    },
  ],
};

/// Descriptor for `PostEventRequst`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postEventRequstDescriptor = $convert.base64Decode(
    'Cg9Qb3N0RXZlbnRSZXF1c3QSLgoFZXZlbnQYASABKAsyGC53YXRjaF90b3dlcl9wcm90by5FdmVudFIFZXZlbnQ=');
@$core.Deprecated('Use postEventResponseDescriptor instead')
const PostEventResponse$json = const {
  '1': 'PostEventResponse',
};

/// Descriptor for `PostEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postEventResponseDescriptor =
    $convert.base64Decode('ChFQb3N0RXZlbnRSZXNwb25zZQ==');
@$core.Deprecated('Use postBatchEventRequstDescriptor instead')
const PostBatchEventRequst$json = const {
  '1': 'PostBatchEventRequst',
  '2': const [
    const {
      '1': 'batchEvent',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.BatchEvent',
      '10': 'batchEvent'
    },
  ],
};

/// Descriptor for `PostBatchEventRequst`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postBatchEventRequstDescriptor = $convert.base64Decode(
    'ChRQb3N0QmF0Y2hFdmVudFJlcXVzdBI9CgpiYXRjaEV2ZW50GAEgASgLMh0ud2F0Y2hfdG93ZXJfcHJvdG8uQmF0Y2hFdmVudFIKYmF0Y2hFdmVudA==');
@$core.Deprecated('Use postBatchEventResponseDescriptor instead')
const PostBatchEventResponse$json = const {
  '1': 'PostBatchEventResponse',
};

/// Descriptor for `PostBatchEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postBatchEventResponseDescriptor =
    $convert.base64Decode('ChZQb3N0QmF0Y2hFdmVudFJlc3BvbnNl');
