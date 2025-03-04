//
//  Generated code. Do not modify.
//  source: proto/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    {'1': 'app_version', '3': 5, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'event_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'eventTimestamp'},
    {'1': 'event_type', '3': 7, '4': 1, '5': 14, '6': '.watch_tower_proto.Event.EVENT_TYPE', '10': 'eventType'},
    {'1': 'app_start_payload', '3': 8, '4': 1, '5': 11, '6': '.watch_tower_proto.AppStartPayload', '10': 'appStartPayload'},
    {'1': 'log_payload', '3': 9, '4': 1, '5': 11, '6': '.watch_tower_proto.LogPayload', '10': 'logPayload'},
    {'1': 'open_link_payload', '3': 10, '4': 1, '5': 11, '6': '.watch_tower_proto.OpenLinkPayload', '10': 'openLinkPayload'},
    {'1': 'custom_payload', '3': 11, '4': 1, '5': 11, '6': '.watch_tower_proto.CustomPayload', '10': 'customPayload'},
    {'1': 'event_id', '3': 12, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'session_id', '3': 13, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'device_info_payload', '3': 14, '4': 1, '5': 11, '6': '.watch_tower_proto.DeviceInfoPayload', '10': 'deviceInfoPayload'},
  ],
  '4': [Event_EVENT_TYPE$json],
};

@$core.Deprecated('Use eventDescriptor instead')
const Event_EVENT_TYPE$json = {
  '1': 'EVENT_TYPE',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'APP_START', '2': 1},
    {'1': 'LOG', '2': 2},
    {'1': 'OPEN_LINK', '2': 3},
    {'1': 'CUSTOM', '2': 4},
    {'1': 'DEVICE_INFO', '2': 5},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIVCgZhcHBfaWQYASABKAlSBWFwcElkEh0KCmFwcF9idW5kbGUYAiABKAlSCWFwcE'
    'J1bmRsZRIXCgd1c2VyX2lkGAMgASgJUgZ1c2VySWQSFwoHYXBwX2tleRgEIAEoCVIGYXBwS2V5'
    'Eh8KC2FwcF92ZXJzaW9uGAUgASgJUgphcHBWZXJzaW9uEkMKD2V2ZW50X3RpbWVzdGFtcBgGIA'
    'EoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDmV2ZW50VGltZXN0YW1wEkIKCmV2ZW50'
    'X3R5cGUYByABKA4yIy53YXRjaF90b3dlcl9wcm90by5FdmVudC5FVkVOVF9UWVBFUglldmVudF'
    'R5cGUSTgoRYXBwX3N0YXJ0X3BheWxvYWQYCCABKAsyIi53YXRjaF90b3dlcl9wcm90by5BcHBT'
    'dGFydFBheWxvYWRSD2FwcFN0YXJ0UGF5bG9hZBI+Cgtsb2dfcGF5bG9hZBgJIAEoCzIdLndhdG'
    'NoX3Rvd2VyX3Byb3RvLkxvZ1BheWxvYWRSCmxvZ1BheWxvYWQSTgoRb3Blbl9saW5rX3BheWxv'
    'YWQYCiABKAsyIi53YXRjaF90b3dlcl9wcm90by5PcGVuTGlua1BheWxvYWRSD29wZW5MaW5rUG'
    'F5bG9hZBJHCg5jdXN0b21fcGF5bG9hZBgLIAEoCzIgLndhdGNoX3Rvd2VyX3Byb3RvLkN1c3Rv'
    'bVBheWxvYWRSDWN1c3RvbVBheWxvYWQSGQoIZXZlbnRfaWQYDCABKAlSB2V2ZW50SWQSHQoKc2'
    'Vzc2lvbl9pZBgNIAEoCVIJc2Vzc2lvbklkElQKE2RldmljZV9pbmZvX3BheWxvYWQYDiABKAsy'
    'JC53YXRjaF90b3dlcl9wcm90by5EZXZpY2VJbmZvUGF5bG9hZFIRZGV2aWNlSW5mb1BheWxvYW'
    'QiXQoKRVZFTlRfVFlQRRILCgdVTktOT1dOEAASDQoJQVBQX1NUQVJUEAESBwoDTE9HEAISDQoJ'
    'T1BFTl9MSU5LEAMSCgoGQ1VTVE9NEAQSDwoLREVWSUNFX0lORk8QBQ==');

@$core.Deprecated('Use batchEventDescriptor instead')
const BatchEvent$json = {
  '1': 'BatchEvent',
  '2': [
    {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    {'1': 'app_version', '3': 5, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'events', '3': 6, '4': 3, '5': 11, '6': '.watch_tower_proto.Event', '10': 'events'},
  ],
};

/// Descriptor for `BatchEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchEventDescriptor = $convert.base64Decode(
    'CgpCYXRjaEV2ZW50EhUKBmFwcF9pZBgBIAEoCVIFYXBwSWQSHQoKYXBwX2J1bmRsZRgCIAEoCV'
    'IJYXBwQnVuZGxlEhcKB3VzZXJfaWQYAyABKAlSBnVzZXJJZBIXCgdhcHBfa2V5GAQgASgJUgZh'
    'cHBLZXkSHwoLYXBwX3ZlcnNpb24YBSABKAlSCmFwcFZlcnNpb24SMAoGZXZlbnRzGAYgAygLMh'
    'gud2F0Y2hfdG93ZXJfcHJvdG8uRXZlbnRSBmV2ZW50cw==');

