///
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sessionFrameDescriptor instead')
const SessionFrame$json = const {
  '1': 'SessionFrame',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    const {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    const {
      '1': 'frame_timestamp',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'frameTimestamp'
    },
    const {'1': 'frame', '3': 7, '4': 1, '5': 12, '10': 'frame'},
    const {'1': 'frame_id', '3': 8, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameDescriptor = $convert.base64Decode(
    'CgxTZXNzaW9uRnJhbWUSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIdCgphcHBfYnVuZGxlGAIgASgJUglhcHBCdW5kbGUSFwoHdXNlcl9pZBgDIAEoCVIGdXNlcklkEhcKB2FwcF9rZXkYBCABKAlSBmFwcEtleRIdCgpzZXNzaW9uX2lkGAUgASgJUglzZXNzaW9uSWQSQwoPZnJhbWVfdGltZXN0YW1wGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOZnJhbWVUaW1lc3RhbXASFAoFZnJhbWUYByABKAxSBWZyYW1lEhkKCGZyYW1lX2lkGAggASgJUgdmcmFtZUlk');
@$core.Deprecated('Use sessionFrameAcceptStatusDescriptor instead')
const SessionFrameAcceptStatus$json = const {
  '1': 'SessionFrameAcceptStatus',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {
      '1': 'frame_timestamp',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'frameTimestamp'
    },
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'frame_id', '3': 5, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrameAcceptStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameAcceptStatusDescriptor =
    $convert.base64Decode(
        'ChhTZXNzaW9uRnJhbWVBY2NlcHRTdGF0dXMSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEkMKD2ZyYW1lX3RpbWVzdGFtcBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDmZyYW1lVGltZXN0YW1wEhYKBnN0YXR1cxgDIAEoCFIGc3RhdHVzEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2USGQoIZnJhbWVfaWQYBSABKAlSB2ZyYW1lSWQ=');
