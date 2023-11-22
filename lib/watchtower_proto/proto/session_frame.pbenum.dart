//
//  Generated code. Do not modify.
//  source: proto/session_frame.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SessionFrameExtended_FRAME_FORMAT extends $pb.ProtobufEnum {
  static const SessionFrameExtended_FRAME_FORMAT UNKNOWN = SessionFrameExtended_FRAME_FORMAT._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const SessionFrameExtended_FRAME_FORMAT PNG = SessionFrameExtended_FRAME_FORMAT._(1, _omitEnumNames ? '' : 'PNG');
  static const SessionFrameExtended_FRAME_FORMAT JPEG = SessionFrameExtended_FRAME_FORMAT._(2, _omitEnumNames ? '' : 'JPEG');

  static const $core.List<SessionFrameExtended_FRAME_FORMAT> values = <SessionFrameExtended_FRAME_FORMAT> [
    UNKNOWN,
    PNG,
    JPEG,
  ];

  static final $core.Map<$core.int, SessionFrameExtended_FRAME_FORMAT> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SessionFrameExtended_FRAME_FORMAT? valueOf($core.int value) => _byValue[value];

  const SessionFrameExtended_FRAME_FORMAT._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
