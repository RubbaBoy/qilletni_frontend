///
//  Generated code. Do not modify.
//  source: events/component/lastfm_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $0;

import 'request/rpc_mapping.pbenum.dart' as $2;

class LastFmCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastFmCreateEvent', createEmptyInstance: create)
    ..aOM<$0.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $0.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  LastFmCreateEvent._() : super();
  factory LastFmCreateEvent({
    $0.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory LastFmCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFmCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastFmCreateEvent clone() => LastFmCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastFmCreateEvent copyWith(void Function(LastFmCreateEvent) updates) => super.copyWith((message) => updates(message as LastFmCreateEvent)) as LastFmCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFmCreateEvent create() => LastFmCreateEvent._();
  LastFmCreateEvent createEmptyInstance() => create();
  static $pb.PbList<LastFmCreateEvent> createRepeated() => $pb.PbList<LastFmCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static LastFmCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastFmCreateEvent>(create);
  static LastFmCreateEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CreateEvent get create_1 => $_getN(0);
  @$pb.TagNumber(1)
  set create_1($0.CreateEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => clearField(1);
  @$pb.TagNumber(1)
  $0.CreateEvent ensureCreate_1() => $_ensure(0);
}

class LastFmSequentialChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastFmSequentialChangeEvent', createEmptyInstance: create)
    ..aOM<$0.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $0.ModifyEvent.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..hasRequiredFields = false
  ;

  LastFmSequentialChangeEvent._() : super();
  factory LastFmSequentialChangeEvent({
    $0.ModifyEvent? modify,
    $core.bool? sequential,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (sequential != null) {
      _result.sequential = sequential;
    }
    return _result;
  }
  factory LastFmSequentialChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFmSequentialChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastFmSequentialChangeEvent clone() => LastFmSequentialChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastFmSequentialChangeEvent copyWith(void Function(LastFmSequentialChangeEvent) updates) => super.copyWith((message) => updates(message as LastFmSequentialChangeEvent)) as LastFmSequentialChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFmSequentialChangeEvent create() => LastFmSequentialChangeEvent._();
  LastFmSequentialChangeEvent createEmptyInstance() => create();
  static $pb.PbList<LastFmSequentialChangeEvent> createRepeated() => $pb.PbList<LastFmSequentialChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static LastFmSequentialChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastFmSequentialChangeEvent>(create);
  static LastFmSequentialChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify($0.ModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get sequential => $_getBF(1);
  @$pb.TagNumber(2)
  set sequential($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequential() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequential() => clearField(2);
}

class LastFmLimitChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastFmLimitChangeEvent', createEmptyInstance: create)
    ..aOM<$0.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $0.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LastFmLimitChangeEvent._() : super();
  factory LastFmLimitChangeEvent({
    $0.ModifyEvent? modify,
    $core.int? limit,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory LastFmLimitChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFmLimitChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastFmLimitChangeEvent clone() => LastFmLimitChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastFmLimitChangeEvent copyWith(void Function(LastFmLimitChangeEvent) updates) => super.copyWith((message) => updates(message as LastFmLimitChangeEvent)) as LastFmLimitChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFmLimitChangeEvent create() => LastFmLimitChangeEvent._();
  LastFmLimitChangeEvent createEmptyInstance() => create();
  static $pb.PbList<LastFmLimitChangeEvent> createRepeated() => $pb.PbList<LastFmLimitChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static LastFmLimitChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastFmLimitChangeEvent>(create);
  static LastFmLimitChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify($0.ModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class LastFmTypeChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastFmTypeChangeEvent', createEmptyInstance: create)
    ..aOM<$0.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $0.ModifyEvent.create)
    ..e<$2.LastFmCollectionType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionType', $pb.PbFieldType.OE, defaultOrMaker: $2.LastFmCollectionType.TOP_TRACKS, valueOf: $2.LastFmCollectionType.valueOf, enumValues: $2.LastFmCollectionType.values)
    ..hasRequiredFields = false
  ;

  LastFmTypeChangeEvent._() : super();
  factory LastFmTypeChangeEvent({
    $0.ModifyEvent? modify,
    $2.LastFmCollectionType? collectionType,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (collectionType != null) {
      _result.collectionType = collectionType;
    }
    return _result;
  }
  factory LastFmTypeChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFmTypeChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastFmTypeChangeEvent clone() => LastFmTypeChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastFmTypeChangeEvent copyWith(void Function(LastFmTypeChangeEvent) updates) => super.copyWith((message) => updates(message as LastFmTypeChangeEvent)) as LastFmTypeChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFmTypeChangeEvent create() => LastFmTypeChangeEvent._();
  LastFmTypeChangeEvent createEmptyInstance() => create();
  static $pb.PbList<LastFmTypeChangeEvent> createRepeated() => $pb.PbList<LastFmTypeChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static LastFmTypeChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastFmTypeChangeEvent>(create);
  static LastFmTypeChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify($0.ModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  $0.ModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.LastFmCollectionType get collectionType => $_getN(1);
  @$pb.TagNumber(2)
  set collectionType($2.LastFmCollectionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionType() => clearField(2);
}

