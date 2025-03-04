//
//  Generated code. Do not modify.
//  source: proto/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Event_EVENT_TYPE extends $pb.ProtobufEnum {
  static const Event_EVENT_TYPE UNKNOWN = Event_EVENT_TYPE._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Event_EVENT_TYPE APP_START = Event_EVENT_TYPE._(1, _omitEnumNames ? '' : 'APP_START');
  static const Event_EVENT_TYPE LOG = Event_EVENT_TYPE._(2, _omitEnumNames ? '' : 'LOG');
  static const Event_EVENT_TYPE OPEN_LINK = Event_EVENT_TYPE._(3, _omitEnumNames ? '' : 'OPEN_LINK');
  static const Event_EVENT_TYPE CUSTOM = Event_EVENT_TYPE._(4, _omitEnumNames ? '' : 'CUSTOM');
  static const Event_EVENT_TYPE DEVICE_INFO = Event_EVENT_TYPE._(5, _omitEnumNames ? '' : 'DEVICE_INFO');

  static const $core.List<Event_EVENT_TYPE> values = <Event_EVENT_TYPE> [
    UNKNOWN,
    APP_START,
    LOG,
    OPEN_LINK,
    CUSTOM,
    DEVICE_INFO,
  ];

  static final $core.Map<$core.int, Event_EVENT_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Event_EVENT_TYPE? valueOf($core.int value) => _byValue[value];

  const Event_EVENT_TYPE._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
