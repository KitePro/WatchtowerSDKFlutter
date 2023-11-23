///
//  Generated code. Do not modify.
//  source: proto/events_payload.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LogPayload_LOG_LEVEL extends $pb.ProtobufEnum {
  static const LogPayload_LOG_LEVEL UNKNOWN = LogPayload_LOG_LEVEL._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const LogPayload_LOG_LEVEL DEBUG = LogPayload_LOG_LEVEL._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEBUG');
  static const LogPayload_LOG_LEVEL INFO = LogPayload_LOG_LEVEL._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFO');
  static const LogPayload_LOG_LEVEL WARNING = LogPayload_LOG_LEVEL._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WARNING');
  static const LogPayload_LOG_LEVEL ERROR = LogPayload_LOG_LEVEL._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const LogPayload_LOG_LEVEL FATAL = LogPayload_LOG_LEVEL._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FATAL');

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

