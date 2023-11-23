///
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SessionFrameExtended_FRAME_FORMAT extends $pb.ProtobufEnum {
  static const SessionFrameExtended_FRAME_FORMAT UNKNOWN = SessionFrameExtended_FRAME_FORMAT._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const SessionFrameExtended_FRAME_FORMAT PNG = SessionFrameExtended_FRAME_FORMAT._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PNG');
  static const SessionFrameExtended_FRAME_FORMAT JPEG = SessionFrameExtended_FRAME_FORMAT._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JPEG');

  static const $core.List<SessionFrameExtended_FRAME_FORMAT> values = <SessionFrameExtended_FRAME_FORMAT> [
    UNKNOWN,
    PNG,
    JPEG,
  ];

  static final $core.Map<$core.int, SessionFrameExtended_FRAME_FORMAT> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionFrameExtended_FRAME_FORMAT? valueOf($core.int value) => _byValue[value];

  const SessionFrameExtended_FRAME_FORMAT._($core.int v, $core.String n) : super(v, n);
}

