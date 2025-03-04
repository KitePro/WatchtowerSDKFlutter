//
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LogPayload_LOG_LEVEL extends $pb.ProtobufEnum {
  static const LogPayload_LOG_LEVEL UNKNOWN = LogPayload_LOG_LEVEL._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const LogPayload_LOG_LEVEL DEBUG = LogPayload_LOG_LEVEL._(1, _omitEnumNames ? '' : 'DEBUG');
  static const LogPayload_LOG_LEVEL INFO = LogPayload_LOG_LEVEL._(2, _omitEnumNames ? '' : 'INFO');
  static const LogPayload_LOG_LEVEL WARNING = LogPayload_LOG_LEVEL._(3, _omitEnumNames ? '' : 'WARNING');
  static const LogPayload_LOG_LEVEL ERROR = LogPayload_LOG_LEVEL._(4, _omitEnumNames ? '' : 'ERROR');
  static const LogPayload_LOG_LEVEL FATAL = LogPayload_LOG_LEVEL._(5, _omitEnumNames ? '' : 'FATAL');

  static const $core.List<LogPayload_LOG_LEVEL> values = <LogPayload_LOG_LEVEL> [
    UNKNOWN,
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL,
  ];

  static final $core.Map<$core.int, LogPayload_LOG_LEVEL> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogPayload_LOG_LEVEL? valueOf($core.int value) => _byValue[value];

  const LogPayload_LOG_LEVEL._($core.int v, $core.String n) : super(v, n);
}

class DeviceInfoPayload_NETWORK_TYPE extends $pb.ProtobufEnum {
  static const DeviceInfoPayload_NETWORK_TYPE UNKNOWN = DeviceInfoPayload_NETWORK_TYPE._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const DeviceInfoPayload_NETWORK_TYPE WIFI = DeviceInfoPayload_NETWORK_TYPE._(1, _omitEnumNames ? '' : 'WIFI');
  static const DeviceInfoPayload_NETWORK_TYPE MOBILE = DeviceInfoPayload_NETWORK_TYPE._(2, _omitEnumNames ? '' : 'MOBILE');

  static const $core.List<DeviceInfoPayload_NETWORK_TYPE> values = <DeviceInfoPayload_NETWORK_TYPE> [
    UNKNOWN,
    WIFI,
    MOBILE,
  ];

  static final $core.Map<$core.int, DeviceInfoPayload_NETWORK_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DeviceInfoPayload_NETWORK_TYPE? valueOf($core.int value) => _byValue[value];

  const DeviceInfoPayload_NETWORK_TYPE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
