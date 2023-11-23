///
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appStartPayloadDescriptor instead')
const AppStartPayload$json = const {
  '1': 'AppStartPayload',
  '2': const [
    const {'1': 'app_start_timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'appStartTimestamp'},
    const {'1': 'locale', '3': 2, '4': 1, '5': 9, '10': 'locale'},
    const {'1': 'os_name', '3': 3, '4': 1, '5': 9, '10': 'osName'},
    const {'1': 'device_model', '3': 4, '4': 1, '5': 9, '10': 'deviceModel'},
    const {'1': 'gaid', '3': 5, '4': 1, '5': 9, '10': 'gaid'},
    const {'1': 'idfa', '3': 6, '4': 1, '5': 9, '10': 'idfa'},
    const {'1': 'oaid', '3': 7, '4': 1, '5': 9, '10': 'oaid'},
    const {'1': 'fcm_token', '3': 8, '4': 1, '5': 9, '10': 'fcmToken'},
    const {'1': 'hms_token', '3': 9, '4': 1, '5': 9, '10': 'hmsToken'},
  ],
};

/// Descriptor for `AppStartPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStartPayloadDescriptor = $convert.base64Decode('Cg9BcHBTdGFydFBheWxvYWQSSgoTYXBwX3N0YXJ0X3RpbWVzdGFtcBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSEWFwcFN0YXJ0VGltZXN0YW1wEhYKBmxvY2FsZRgCIAEoCVIGbG9jYWxlEhcKB29zX25hbWUYAyABKAlSBm9zTmFtZRIhCgxkZXZpY2VfbW9kZWwYBCABKAlSC2RldmljZU1vZGVsEhIKBGdhaWQYBSABKAlSBGdhaWQSEgoEaWRmYRgGIAEoCVIEaWRmYRISCgRvYWlkGAcgASgJUgRvYWlkEhsKCWZjbV90b2tlbhgIIAEoCVIIZmNtVG9rZW4SGwoJaG1zX3Rva2VuGAkgASgJUghobXNUb2tlbg==');
@$core.Deprecated('Use customPayloadDescriptor instead')
const CustomPayload$json = const {
  '1': 'CustomPayload',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CustomPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customPayloadDescriptor = $convert.base64Decode('Cg1DdXN0b21QYXlsb2FkEhIKBGRhdGEYASABKAlSBGRhdGESEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use logPayloadDescriptor instead')
const LogPayload$json = const {
  '1': 'LogPayload',
  '2': const [
    const {'1': 'level', '3': 1, '4': 1, '5': 14, '6': '.watch_tower_proto.LogPayload.LOG_LEVEL', '10': 'level'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'module_name', '3': 3, '4': 1, '5': 9, '10': 'moduleName'},
  ],
  '4': const [LogPayload_LOG_LEVEL$json],
};

@$core.Deprecated('Use logPayloadDescriptor instead')
const LogPayload_LOG_LEVEL$json = const {
  '1': 'LOG_LEVEL',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'DEBUG', '2': 1},
    const {'1': 'INFO', '2': 2},
    const {'1': 'WARNING', '2': 3},
    const {'1': 'ERROR', '2': 4},
    const {'1': 'FATAL', '2': 5},
  ],
};

/// Descriptor for `LogPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logPayloadDescriptor = $convert.base64Decode('CgpMb2dQYXlsb2FkEj0KBWxldmVsGAEgASgOMicud2F0Y2hfdG93ZXJfcHJvdG8uTG9nUGF5bG9hZC5MT0dfTEVWRUxSBWxldmVsEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USHwoLbW9kdWxlX25hbWUYAyABKAlSCm1vZHVsZU5hbWUiUAoJTE9HX0xFVkVMEgsKB1VOS05PV04QABIJCgVERUJVRxABEggKBElORk8QAhILCgdXQVJOSU5HEAMSCQoFRVJST1IQBBIJCgVGQVRBTBAF');
@$core.Deprecated('Use openLinkPayloadDescriptor instead')
const OpenLinkPayload$json = const {
  '1': 'OpenLinkPayload',
  '2': const [
    const {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'response_code', '3': 2, '4': 1, '5': 5, '10': 'responseCode'},
    const {'1': 'response_text', '3': 3, '4': 1, '5': 9, '10': 'responseText'},
  ],
};

/// Descriptor for `OpenLinkPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openLinkPayloadDescriptor = $convert.base64Decode('Cg9PcGVuTGlua1BheWxvYWQSEAoDdXJpGAEgASgJUgN1cmkSIwoNcmVzcG9uc2VfY29kZRgCIAEoBVIMcmVzcG9uc2VDb2RlEiMKDXJlc3BvbnNlX3RleHQYAyABKAlSDHJlc3BvbnNlVGV4dA==');
