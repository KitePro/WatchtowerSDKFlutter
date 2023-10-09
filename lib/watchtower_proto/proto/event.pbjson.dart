///
//  Generated code. Do not modify.
//  source: proto/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// Dart imports:
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    const {'1': 'app_version', '3': 5, '4': 1, '5': 9, '10': 'appVersion'},
    const {
      '1': 'event_timestamp',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'eventTimestamp'
    },
    const {
      '1': 'event_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.watch_tower_proto.Event.EVENT_TYPE',
      '10': 'eventType'
    },
    const {
      '1': 'app_start_payload',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.AppStartPayload',
      '10': 'appStartPayload'
    },
    const {
      '1': 'log_payload',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.LogPayload',
      '10': 'logPayload'
    },
    const {
      '1': 'open_link_payload',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.OpenLinkPayload',
      '10': 'openLinkPayload'
    },
    const {
      '1': 'custom_payload',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.watch_tower_proto.CustomPayload',
      '10': 'customPayload'
    },
    const {'1': 'event_id', '3': 12, '4': 1, '5': 9, '10': 'eventId'},
    const {'1': 'session_id', '3': 13, '4': 1, '5': 9, '10': 'sessionId'},
  ],
  '4': const [Event_EVENT_TYPE$json],
};

@$core.Deprecated('Use eventDescriptor instead')
const Event_EVENT_TYPE$json = const {
  '1': 'EVENT_TYPE',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'APP_START', '2': 1},
    const {'1': 'LOG', '2': 2},
    const {'1': 'OPEN_LINK', '2': 3},
    const {'1': 'CUSTOM', '2': 4},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIVCgZhcHBfaWQYASABKAlSBWFwcElkEh0KCmFwcF9idW5kbGUYAiABKAlSCWFwcEJ1bmRsZRIXCgd1c2VyX2lkGAMgASgJUgZ1c2VySWQSFwoHYXBwX2tleRgEIAEoCVIGYXBwS2V5Eh8KC2FwcF92ZXJzaW9uGAUgASgJUgphcHBWZXJzaW9uEkMKD2V2ZW50X3RpbWVzdGFtcBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDmV2ZW50VGltZXN0YW1wEkIKCmV2ZW50X3R5cGUYByABKA4yIy53YXRjaF90b3dlcl9wcm90by5FdmVudC5FVkVOVF9UWVBFUglldmVudFR5cGUSTgoRYXBwX3N0YXJ0X3BheWxvYWQYCCABKAsyIi53YXRjaF90b3dlcl9wcm90by5BcHBTdGFydFBheWxvYWRSD2FwcFN0YXJ0UGF5bG9hZBI+Cgtsb2dfcGF5bG9hZBgJIAEoCzIdLndhdGNoX3Rvd2VyX3Byb3RvLkxvZ1BheWxvYWRSCmxvZ1BheWxvYWQSTgoRb3Blbl9saW5rX3BheWxvYWQYCiABKAsyIi53YXRjaF90b3dlcl9wcm90by5PcGVuTGlua1BheWxvYWRSD29wZW5MaW5rUGF5bG9hZBJHCg5jdXN0b21fcGF5bG9hZBgLIAEoCzIgLndhdGNoX3Rvd2VyX3Byb3RvLkN1c3RvbVBheWxvYWRSDWN1c3RvbVBheWxvYWQSGQoIZXZlbnRfaWQYDCABKAlSB2V2ZW50SWQSHQoKc2Vzc2lvbl9pZBgNIAEoCVIJc2Vzc2lvbklkIkwKCkVWRU5UX1RZUEUSCwoHVU5LTk9XThAAEg0KCUFQUF9TVEFSVBABEgcKA0xPRxACEg0KCU9QRU5fTElOSxADEgoKBkNVU1RPTRAE');
@$core.Deprecated('Use batchEventDescriptor instead')
const BatchEvent$json = const {
  '1': 'BatchEvent',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'app_bundle', '3': 2, '4': 1, '5': 9, '10': 'appBundle'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'app_key', '3': 4, '4': 1, '5': 9, '10': 'appKey'},
    const {'1': 'app_version', '3': 5, '4': 1, '5': 9, '10': 'appVersion'},
    const {
      '1': 'events',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.watch_tower_proto.Event',
      '10': 'events'
    },
  ],
};

/// Descriptor for `BatchEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchEventDescriptor = $convert.base64Decode(
    'CgpCYXRjaEV2ZW50EhUKBmFwcF9pZBgBIAEoCVIFYXBwSWQSHQoKYXBwX2J1bmRsZRgCIAEoCVIJYXBwQnVuZGxlEhcKB3VzZXJfaWQYAyABKAlSBnVzZXJJZBIXCgdhcHBfa2V5GAQgASgJUgZhcHBLZXkSHwoLYXBwX3ZlcnNpb24YBSABKAlSCmFwcFZlcnNpb24SMAoGZXZlbnRzGAYgAygLMhgud2F0Y2hfdG93ZXJfcHJvdG8uRXZlbnRSBmV2ZW50cw==');
