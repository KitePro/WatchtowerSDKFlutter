///
//  Generated code. Do not modify.
//  source: proto/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Event_EVENT_TYPE extends $pb.ProtobufEnum {
  static const Event_EVENT_TYPE UNKNOWN = Event_EVENT_TYPE._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const Event_EVENT_TYPE APP_START = Event_EVENT_TYPE._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APP_START');
  static const Event_EVENT_TYPE LOG = Event_EVENT_TYPE._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOG');
  static const Event_EVENT_TYPE OPEN_LINK = Event_EVENT_TYPE._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN_LINK');
  static const Event_EVENT_TYPE CUSTOM = Event_EVENT_TYPE._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CUSTOM');

  static const $core.List<Event_EVENT_TYPE> values = <Event_EVENT_TYPE> [
    UNKNOWN,
    APP_START,
    LOG,
    OPEN_LINK,
    CUSTOM,
  ];

  static final $core.Map<$core.int, Event_EVENT_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Event_EVENT_TYPE? valueOf($core.int value) => _byValue[value];

  const Event_EVENT_TYPE._($core.int v, $core.String n) : super(v, n);
}

