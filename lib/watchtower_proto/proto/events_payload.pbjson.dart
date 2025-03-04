//
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use appStartPayloadDescriptor instead')
const AppStartPayload$json = {
  '1': 'AppStartPayload',
  '2': [
    {'1': 'gaid', '3': 1, '4': 1, '5': 9, '10': 'gaid'},
    {'1': 'oaid', '3': 2, '4': 1, '5': 9, '10': 'oaid'},
    {'1': 'idfa', '3': 3, '4': 1, '5': 9, '10': 'idfa'},
    {'1': 'locale', '3': 4, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'osName', '3': 5, '4': 1, '5': 9, '10': 'osName'},
    {'1': 'deviceModel', '3': 6, '4': 1, '5': 9, '10': 'deviceModel'},
    {'1': 'fcmToken', '3': 7, '4': 1, '5': 9, '10': 'fcmToken'},
    {'1': 'hmsToken', '3': 8, '4': 1, '5': 9, '10': 'hmsToken'},
    {'1': 'appStartTimestamp', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'appStartTimestamp'},
  ],
};

/// Descriptor for `AppStartPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStartPayloadDescriptor = $convert.base64Decode(
    'Cg9BcHBTdGFydFBheWxvYWQSEgoEZ2FpZBgBIAEoCVIEZ2FpZBISCgRvYWlkGAIgASgJUgRvYW'
    'lkEhIKBGlkZmEYAyABKAlSBGlkZmESFgoGbG9jYWxlGAQgASgJUgZsb2NhbGUSFgoGb3NOYW1l'
    'GAUgASgJUgZvc05hbWUSIAoLZGV2aWNlTW9kZWwYBiABKAlSC2RldmljZU1vZGVsEhoKCGZjbV'
    'Rva2VuGAcgASgJUghmY21Ub2tlbhIaCghobXNUb2tlbhgIIAEoCVIIaG1zVG9rZW4SSAoRYXBw'
    'U3RhcnRUaW1lc3RhbXAYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUhFhcHBTdG'
    'FydFRpbWVzdGFtcA==');

@$core.Deprecated('Use customPayloadDescriptor instead')
const CustomPayload$json = {
  '1': 'CustomPayload',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CustomPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customPayloadDescriptor = $convert.base64Decode(
    'Cg1DdXN0b21QYXlsb2FkEhIKBGRhdGEYASABKAlSBGRhdGESEgoEbmFtZRgCIAEoCVIEbmFtZQ'
    '==');

@$core.Deprecated('Use logPayloadDescriptor instead')
const LogPayload$json = {
  '1': 'LogPayload',
  '2': [
    {'1': 'level', '3': 1, '4': 1, '5': 14, '6': '.watch_tower_proto.LogPayload.LOG_LEVEL', '10': 'level'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'module_name', '3': 3, '4': 1, '5': 9, '10': 'moduleName'},
  ],
  '4': [LogPayload_LOG_LEVEL$json],
};

@$core.Deprecated('Use logPayloadDescriptor instead')
const LogPayload_LOG_LEVEL$json = {
  '1': 'LOG_LEVEL',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'DEBUG', '2': 1},
    {'1': 'INFO', '2': 2},
    {'1': 'WARNING', '2': 3},
    {'1': 'ERROR', '2': 4},
    {'1': 'FATAL', '2': 5},
  ],
};

/// Descriptor for `LogPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logPayloadDescriptor = $convert.base64Decode(
    'CgpMb2dQYXlsb2FkEj0KBWxldmVsGAEgASgOMicud2F0Y2hfdG93ZXJfcHJvdG8uTG9nUGF5bG'
    '9hZC5MT0dfTEVWRUxSBWxldmVsEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USHwoLbW9kdWxl'
    'X25hbWUYAyABKAlSCm1vZHVsZU5hbWUiUAoJTE9HX0xFVkVMEgsKB1VOS05PV04QABIJCgVERU'
    'JVRxABEggKBElORk8QAhILCgdXQVJOSU5HEAMSCQoFRVJST1IQBBIJCgVGQVRBTBAF');

@$core.Deprecated('Use openLinkPayloadDescriptor instead')
const OpenLinkPayload$json = {
  '1': 'OpenLinkPayload',
  '2': [
    {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'response_code', '3': 2, '4': 1, '5': 5, '10': 'responseCode'},
    {'1': 'response_text', '3': 3, '4': 1, '5': 9, '10': 'responseText'},
  ],
};

/// Descriptor for `OpenLinkPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openLinkPayloadDescriptor = $convert.base64Decode(
    'Cg9PcGVuTGlua1BheWxvYWQSEAoDdXJpGAEgASgJUgN1cmkSIwoNcmVzcG9uc2VfY29kZRgCIA'
    'EoBVIMcmVzcG9uc2VDb2RlEiMKDXJlc3BvbnNlX3RleHQYAyABKAlSDHJlc3BvbnNlVGV4dA==');

@$core.Deprecated('Use deviceInfoPayloadDescriptor instead')
const DeviceInfoPayload$json = {
  '1': 'DeviceInfoPayload',
  '2': [
    {'1': 'network_type', '3': 1, '4': 1, '5': 14, '6': '.watch_tower_proto.DeviceInfoPayload.NETWORK_TYPE', '10': 'networkType'},
    {'1': 'device_manufacturer', '3': 2, '4': 1, '5': 9, '10': 'deviceManufacturer'},
    {'1': 'device_model', '3': 3, '4': 1, '5': 9, '10': 'deviceModel'},
    {'1': 'app_version', '3': 4, '4': 1, '5': 9, '10': 'appVersion'},
    {'1': 'android_security_path', '3': 5, '4': 1, '5': 9, '10': 'androidSecurityPath'},
    {'1': 'os_version', '3': 6, '4': 1, '5': 9, '10': 'osVersion'},
    {'1': 'os_name', '3': 7, '4': 1, '5': 9, '10': 'osName'},
    {'1': 'root', '3': 8, '4': 1, '5': 8, '10': 'root'},
    {'1': 'screen_width', '3': 9, '4': 1, '5': 5, '10': 'screenWidth'},
    {'1': 'screen_height', '3': 10, '4': 1, '5': 5, '10': 'screenHeight'},
    {'1': 'screen_width_dp', '3': 11, '4': 1, '5': 5, '10': 'screenWidthDp'},
    {'1': 'screen_height_dp', '3': 12, '4': 1, '5': 5, '10': 'screenHeightDp'},
    {'1': 'external_deviceId', '3': 13, '4': 1, '5': 9, '10': 'externalDeviceId'},
    {'1': 'locale', '3': 14, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'gaid', '3': 15, '4': 1, '5': 9, '10': 'gaid'},
    {'1': 'idfa', '3': 16, '4': 1, '5': 9, '10': 'idfa'},
    {'1': 'oaid', '3': 17, '4': 1, '5': 9, '10': 'oaid'},
    {'1': 'fcm_token', '3': 18, '4': 1, '5': 9, '10': 'fcmToken'},
    {'1': 'hms_token', '3': 19, '4': 1, '5': 9, '10': 'hmsToken'},
  ],
  '4': [DeviceInfoPayload_NETWORK_TYPE$json],
};

@$core.Deprecated('Use deviceInfoPayloadDescriptor instead')
const DeviceInfoPayload_NETWORK_TYPE$json = {
  '1': 'NETWORK_TYPE',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'WIFI', '2': 1},
    {'1': 'MOBILE', '2': 2},
  ],
};

/// Descriptor for `DeviceInfoPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceInfoPayloadDescriptor = $convert.base64Decode(
    'ChFEZXZpY2VJbmZvUGF5bG9hZBJUCgxuZXR3b3JrX3R5cGUYASABKA4yMS53YXRjaF90b3dlcl'
    '9wcm90by5EZXZpY2VJbmZvUGF5bG9hZC5ORVRXT1JLX1RZUEVSC25ldHdvcmtUeXBlEi8KE2Rl'
    'dmljZV9tYW51ZmFjdHVyZXIYAiABKAlSEmRldmljZU1hbnVmYWN0dXJlchIhCgxkZXZpY2VfbW'
    '9kZWwYAyABKAlSC2RldmljZU1vZGVsEh8KC2FwcF92ZXJzaW9uGAQgASgJUgphcHBWZXJzaW9u'
    'EjIKFWFuZHJvaWRfc2VjdXJpdHlfcGF0aBgFIAEoCVITYW5kcm9pZFNlY3VyaXR5UGF0aBIdCg'
    'pvc192ZXJzaW9uGAYgASgJUglvc1ZlcnNpb24SFwoHb3NfbmFtZRgHIAEoCVIGb3NOYW1lEhIK'
    'BHJvb3QYCCABKAhSBHJvb3QSIQoMc2NyZWVuX3dpZHRoGAkgASgFUgtzY3JlZW5XaWR0aBIjCg'
    '1zY3JlZW5faGVpZ2h0GAogASgFUgxzY3JlZW5IZWlnaHQSJgoPc2NyZWVuX3dpZHRoX2RwGAsg'
    'ASgFUg1zY3JlZW5XaWR0aERwEigKEHNjcmVlbl9oZWlnaHRfZHAYDCABKAVSDnNjcmVlbkhlaW'
    'dodERwEisKEWV4dGVybmFsX2RldmljZUlkGA0gASgJUhBleHRlcm5hbERldmljZUlkEhYKBmxv'
    'Y2FsZRgOIAEoCVIGbG9jYWxlEhIKBGdhaWQYDyABKAlSBGdhaWQSEgoEaWRmYRgQIAEoCVIEaW'
    'RmYRISCgRvYWlkGBEgASgJUgRvYWlkEhsKCWZjbV90b2tlbhgSIAEoCVIIZmNtVG9rZW4SGwoJ'
    'aG1zX3Rva2VuGBMgASgJUghobXNUb2tlbiIxCgxORVRXT1JLX1RZUEUSCwoHVU5LTk9XThAAEg'
    'gKBFdJRkkQARIKCgZNT0JJTEUQAg==');

