//
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sessionFrameDescriptor instead')
const SessionFrame$json = {
  '1': 'SessionFrame',
  '2': [
    {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'frame_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    {'1': 'frame', '3': 7, '4': 1, '5': 12, '10': 'frame'},
    {'1': 'frame_id', '3': 8, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameDescriptor = $convert.base64Decode(
    'CgxTZXNzaW9uRnJhbWUSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIdCgphcHBfYnVuZGxlGAIgAS'
    'gJUglhcHBCdW5kbGUSFwoHdXNlcl9pZBgDIAEoCVIGdXNlcklkEhcKB2FwcF9rZXkYBCABKAlS'
    'BmFwcEtleRIdCgpzZXNzaW9uX2lkGAUgASgJUglzZXNzaW9uSWQSQwoPZnJhbWVfdGltZXN0YW'
    '1wGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOZnJhbWVUaW1lc3RhbXASFAoF'
    'ZnJhbWUYByABKAxSBWZyYW1lEhkKCGZyYW1lX2lkGAggASgJUgdmcmFtZUlk');

@$core.Deprecated('Use sessionFrameExtendedDescriptor instead')
const SessionFrameExtended$json = {
  '1': 'SessionFrameExtended',
  '2': [
    {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    {'1': 'session_id', '3': 5, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'frame_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    {'1': 'frame', '3': 7, '4': 1, '5': 12, '10': 'frame'},
    {'1': 'frame_id', '3': 8, '4': 1, '5': 9, '10': 'frameId'},
    {'1': 'format', '3': 9, '4': 1, '5': 14, '6': '.watch_tower_proto.SessionFrameExtended.FRAME_FORMAT', '10': 'format'},
  ],
  '4': [SessionFrameExtended_FRAME_FORMAT$json],
};

@$core.Deprecated('Use sessionFrameExtendedDescriptor instead')
const SessionFrameExtended_FRAME_FORMAT$json = {
  '1': 'FRAME_FORMAT',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'PNG', '2': 1},
    {'1': 'JPEG', '2': 2},
  ],
};

/// Descriptor for `SessionFrameExtended`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameExtendedDescriptor = $convert.base64Decode(
    'ChRTZXNzaW9uRnJhbWVFeHRlbmRlZBIVCgZhcHBfaWQYASABKAlSBWFwcElkEh0KCmFwcF9idW'
    '5kbGUYAiABKAlSCWFwcEJ1bmRsZRIXCgd1c2VyX2lkGAMgASgJUgZ1c2VySWQSFwoHYXBwX2tl'
    'eRgEIAEoCVIGYXBwS2V5Eh0KCnNlc3Npb25faWQYBSABKAlSCXNlc3Npb25JZBJDCg9mcmFtZV'
    '90aW1lc3RhbXAYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg5mcmFtZVRpbWVz'
    'dGFtcBIUCgVmcmFtZRgHIAEoDFIFZnJhbWUSGQoIZnJhbWVfaWQYCCABKAlSB2ZyYW1lSWQSTA'
    'oGZm9ybWF0GAkgASgOMjQud2F0Y2hfdG93ZXJfcHJvdG8uU2Vzc2lvbkZyYW1lRXh0ZW5kZWQu'
    'RlJBTUVfRk9STUFUUgZmb3JtYXQiLgoMRlJBTUVfRk9STUFUEgsKB1VOS05PV04QABIHCgNQTk'
    'cQARIICgRKUEVHEAI=');

@$core.Deprecated('Use sessionFrameAcceptStatusDescriptor instead')
const SessionFrameAcceptStatus$json = {
  '1': 'SessionFrameAcceptStatus',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'frame_timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'frameTimestamp'},
    {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {'1': 'frame_id', '3': 5, '4': 1, '5': 9, '10': 'frameId'},
  ],
};

/// Descriptor for `SessionFrameAcceptStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionFrameAcceptStatusDescriptor = $convert.base64Decode(
    'ChhTZXNzaW9uRnJhbWVBY2NlcHRTdGF0dXMSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEkMKD2'
    'ZyYW1lX3RpbWVzdGFtcBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDmZyYW1l'
    'VGltZXN0YW1wEhYKBnN0YXR1cxgDIAEoCFIGc3RhdHVzEhgKB21lc3NhZ2UYBCABKAlSB21lc3'
    'NhZ2USGQoIZnJhbWVfaWQYBSABKAlSB2ZyYW1lSWQ=');

