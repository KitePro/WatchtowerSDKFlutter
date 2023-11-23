///
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
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
    const {'1': 'frame_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    const {'1': 'frame', '3': 7, '4': 1, '5': 12, '10': 'frame'},
    const {'1': 'frame_id', '3': 8, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameDescriptor = $convert.base64Decode('CgxTZXNzaW9uRnJhbWUSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIdCgphcHBfYnVuZGxlGAIgASgJUglhcHBCdW5kbGUSFwoHdXNlcl9pZBgDIAEoCVIGdXNlcklkEhcKB2FwcF9rZXkYBCABKAlSBmFwcEtleRIdCgpzZXNzaW9uX2lkGAUgASgJUglzZXNzaW9uSWQSQwoPZnJhbWVfdGltZXN0YW1wGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOZnJhbWVUaW1lc3RhbXASFAoFZnJhbWUYByABKAxSBWZyYW1lEhkKCGZyYW1lX2lkGAggASgJUgdmcmFtZUlk');
@$core.Deprecated('Use sessionFrameExtendedDescriptor instead')
const SessionFrameExtended$json = const {
  '1': 'SessionFrameExtended',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    const {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'frame_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    const {'1': 'frame', '3': 7, '4': 1, '5': 12, '10': 'frame'},
    const {'1': 'frame_id', '3': 8, '4': 1, '5': 9, '10': 'frameId'},
    const {'1': 'format', '3': 9, '4': 1, '5': 14, '6': '.watch_tower_proto.SessionFrameExtended.FRAME_FORMAT', '10': 'format'},
  ],
  '4': const [SessionFrameExtended_FRAME_FORMAT$json],
};

@$core.Deprecated('Use sessionFrameExtendedDescriptor instead')
const SessionFrameExtended_FRAME_FORMAT$json = const {
  '1': 'FRAME_FORMAT',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'PNG', '2': 1},
    const {'1': 'JPEG', '2': 2},
  ],
};

/// Descriptor for `SessionFrameExtended`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameExtendedDescriptor = $convert.base64Decode('ChRTZXNzaW9uRnJhbWVFeHRlbmRlZBIVCgZhcHBfaWQYASABKAlSBWFwcElkEh0KCmFwcF9idW5kbGUYAiABKAlSCWFwcEJ1bmRsZRIXCgd1c2VyX2lkGAMgASgJUgZ1c2VySWQSFwoHYXBwX2tleRgEIAEoCVIGYXBwS2V5Eh0KCnNlc3Npb25faWQYBSABKAlSCXNlc3Npb25JZBJDCg9mcmFtZV90aW1lc3RhbXAYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg5mcmFtZVRpbWVzdGFtcBIUCgVmcmFtZRgHIAEoDFIFZnJhbWUSGQoIZnJhbWVfaWQYCCABKAlSB2ZyYW1lSWQSTAoGZm9ybWF0GAkgASgOMjQud2F0Y2hfdG93ZXJfcHJvdG8uU2Vzc2lvbkZyYW1lRXh0ZW5kZWQuRlJBTUVfRk9STUFUUgZmb3JtYXQiLgoMRlJBTUVfRk9STUFUEgsKB1VOS05PV04QABIHCgNQTkcQARIICgRKUEVHEAI=');
@$core.Deprecated('Use sessionFrameAcceptStatusDescriptor instead')
const SessionFrameAcceptStatus$json = const {
  '1': 'SessionFrameAcceptStatus',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'frame_timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'frame_id', '3': 5, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrameAcceptStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameAcceptStatusDescriptor = $convert.base64Decode('ChhTZXNzaW9uRnJhbWVBY2NlcHRTdGF0dXMSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEkMKD2ZyYW1lX3RpbWVzdGFtcBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDmZyYW1lVGltZXN0YW1wEhYKBnN0YXR1cxgDIAEoCFIGc3RhdHVzEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2USGQoIZnJhbWVfaWQYBSABKAlSB2ZyYW1lSWQ=');
