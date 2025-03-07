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

import '../google/protobuf/timestamp.pb.dart' as $2;
import 'event.pbenum.dart';
import 'events_payload.pb.dart' as $3;

export 'event.pbenum.dart';

class Event extends $pb.GeneratedMessage {
  factory Event({
    $core.String? appId,
    $core.String? appBundle,
    $core.String? userId,
    $core.String? appKey,
    $core.String? appVersion,
    $2.Timestamp? eventTimestamp,
    Event_EVENT_TYPE? eventType,
    $3.AppStartPayload? appStartPayload,
    $3.LogPayload? logPayload,
    $3.OpenLinkPayload? openLinkPayload,
    $3.CustomPayload? customPayload,
    $core.String? eventId,
    $core.String? sessionId,
    $3.DeviceInfoPayload? deviceInfoPayload,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (appBundle != null) {
      $result.appBundle = appBundle;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appKey != null) {
      $result.appKey = appKey;
    }
    if (appVersion != null) {
      $result.appVersion = appVersion;
    }
    if (eventTimestamp != null) {
      $result.eventTimestamp = eventTimestamp;
    }
    if (eventType != null) {
      $result.eventType = eventType;
    }
    if (appStartPayload != null) {
      $result.appStartPayload = appStartPayload;
    }
    if (logPayload != null) {
      $result.logPayload = logPayload;
    }
    if (openLinkPayload != null) {
      $result.openLinkPayload = openLinkPayload;
    }
    if (customPayload != null) {
      $result.customPayload = customPayload;
    }
    if (eventId != null) {
      $result.eventId = eventId;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (deviceInfoPayload != null) {
      $result.deviceInfoPayload = deviceInfoPayload;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'appBundle')
    ..aOS(3, _omitFieldNames ? '' : 'userId')
    ..aOS(4, _omitFieldNames ? '' : 'appKey')
    ..aOS(5, _omitFieldNames ? '' : 'appVersion')
    ..aOM<$2.Timestamp>(6, _omitFieldNames ? '' : 'eventTimestamp', subBuilder: $2.Timestamp.create)
    ..e<Event_EVENT_TYPE>(7, _omitFieldNames ? '' : 'eventType', $pb.PbFieldType.OE, defaultOrMaker: Event_EVENT_TYPE.UNKNOWN, valueOf: Event_EVENT_TYPE.valueOf, enumValues: Event_EVENT_TYPE.values)
    ..aOM<$3.AppStartPayload>(8, _omitFieldNames ? '' : 'appStartPayload', subBuilder: $3.AppStartPayload.create)
    ..aOM<$3.LogPayload>(9, _omitFieldNames ? '' : 'logPayload', subBuilder: $3.LogPayload.create)
    ..aOM<$3.OpenLinkPayload>(10, _omitFieldNames ? '' : 'openLinkPayload', subBuilder: $3.OpenLinkPayload.create)
    ..aOM<$3.CustomPayload>(11, _omitFieldNames ? '' : 'customPayload', subBuilder: $3.CustomPayload.create)
    ..aOS(12, _omitFieldNames ? '' : 'eventId')
    ..aOS(13, _omitFieldNames ? '' : 'sessionId')
    ..aOM<$3.DeviceInfoPayload>(14, _omitFieldNames ? '' : 'deviceInfoPayload', subBuilder: $3.DeviceInfoPayload.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appBundle => $_getSZ(1);
  @$pb.TagNumber(2)
  set appBundle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppBundle() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppBundle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set appKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set appVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppVersion() => clearField(5);

  @$pb.TagNumber(6)
  $2.Timestamp get eventTimestamp => $_getN(5);
  @$pb.TagNumber(6)
  set eventTimestamp($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventTimestamp() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureEventTimestamp() => $_ensure(5);

  @$pb.TagNumber(7)
  Event_EVENT_TYPE get eventType => $_getN(6);
  @$pb.TagNumber(7)
  set eventType(Event_EVENT_TYPE v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEventType() => $_has(6);
  @$pb.TagNumber(7)
  void clearEventType() => clearField(7);

  @$pb.TagNumber(8)
  $3.AppStartPayload get appStartPayload => $_getN(7);
  @$pb.TagNumber(8)
  set appStartPayload($3.AppStartPayload v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppStartPayload() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppStartPayload() => clearField(8);
  @$pb.TagNumber(8)
  $3.AppStartPayload ensureAppStartPayload() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.LogPayload get logPayload => $_getN(8);
  @$pb.TagNumber(9)
  set logPayload($3.LogPayload v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLogPayload() => $_has(8);
  @$pb.TagNumber(9)
  void clearLogPayload() => clearField(9);
  @$pb.TagNumber(9)
  $3.LogPayload ensureLogPayload() => $_ensure(8);

  @$pb.TagNumber(10)
  $3.OpenLinkPayload get openLinkPayload => $_getN(9);
  @$pb.TagNumber(10)
  set openLinkPayload($3.OpenLinkPayload v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOpenLinkPayload() => $_has(9);
  @$pb.TagNumber(10)
  void clearOpenLinkPayload() => clearField(10);
  @$pb.TagNumber(10)
  $3.OpenLinkPayload ensureOpenLinkPayload() => $_ensure(9);

  @$pb.TagNumber(11)
  $3.CustomPayload get customPayload => $_getN(10);
  @$pb.TagNumber(11)
  set customPayload($3.CustomPayload v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCustomPayload() => $_has(10);
  @$pb.TagNumber(11)
  void clearCustomPayload() => clearField(11);
  @$pb.TagNumber(11)
  $3.CustomPayload ensureCustomPayload() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get eventId => $_getSZ(11);
  @$pb.TagNumber(12)
  set eventId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEventId() => $_has(11);
  @$pb.TagNumber(12)
  void clearEventId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get sessionId => $_getSZ(12);
  @$pb.TagNumber(13)
  set sessionId($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSessionId() => $_has(12);
  @$pb.TagNumber(13)
  void clearSessionId() => clearField(13);

  @$pb.TagNumber(14)
  $3.DeviceInfoPayload get deviceInfoPayload => $_getN(13);
  @$pb.TagNumber(14)
  set deviceInfoPayload($3.DeviceInfoPayload v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeviceInfoPayload() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeviceInfoPayload() => clearField(14);
  @$pb.TagNumber(14)
  $3.DeviceInfoPayload ensureDeviceInfoPayload() => $_ensure(13);
}

class BatchEvent extends $pb.GeneratedMessage {
  factory BatchEvent({
    $core.String? appId,
    $core.String? appBundle,
    $core.String? userId,
    $core.String? appKey,
    $core.String? appVersion,
    $core.Iterable<Event>? events,
  }) {
    final $result = create();
    if (appId != null) {
      $result.appId = appId;
    }
    if (appBundle != null) {
      $result.appBundle = appBundle;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (appKey != null) {
      $result.appKey = appKey;
    }
    if (appVersion != null) {
      $result.appVersion = appVersion;
    }
    if (events != null) {
      $result.events.addAll(events);
    }
    return $result;
  }
  BatchEvent._() : super();
  factory BatchEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'watch_tower_proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appId')
    ..aOS(2, _omitFieldNames ? '' : 'appBundle')
    ..aOS(3, _omitFieldNames ? '' : 'userId')
    ..aOS(4, _omitFieldNames ? '' : 'appKey')
    ..aOS(5, _omitFieldNames ? '' : 'appVersion')
    ..pc<Event>(6, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM, subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchEvent clone() => BatchEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchEvent copyWith(void Function(BatchEvent) updates) => super.copyWith((message) => updates(message as BatchEvent)) as BatchEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchEvent create() => BatchEvent._();
  BatchEvent createEmptyInstance() => create();
  static $pb.PbList<BatchEvent> createRepeated() => $pb.PbList<BatchEvent>();
  @$core.pragma('dart2js:noInline')
  static BatchEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchEvent>(create);
  static BatchEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appBundle => $_getSZ(1);
  @$pb.TagNumber(2)
  set appBundle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppBundle() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppBundle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userId => $_getSZ(2);
  @$pb.TagNumber(3)
  set userId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set appKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set appVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<Event> get events => $_getList(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
