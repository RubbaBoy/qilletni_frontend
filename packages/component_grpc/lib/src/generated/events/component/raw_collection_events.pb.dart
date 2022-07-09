///
//  Generated code. Do not modify.
//  source: events/component/raw_collection_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $1;

class RawCollectionCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RawCollectionCreateEvent', createEmptyInstance: create)
    ..aOM<$1.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $1.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  RawCollectionCreateEvent._() : super();
  factory RawCollectionCreateEvent({
    $1.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory RawCollectionCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawCollectionCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawCollectionCreateEvent clone() => RawCollectionCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawCollectionCreateEvent copyWith(void Function(RawCollectionCreateEvent) updates) => super.copyWith((message) => updates(message as RawCollectionCreateEvent)) as RawCollectionCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawCollectionCreateEvent create() => RawCollectionCreateEvent._();
  RawCollectionCreateEvent createEmptyInstance() => create();
  static $pb.PbList<RawCollectionCreateEvent> createRepeated() => $pb.PbList<RawCollectionCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static RawCollectionCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawCollectionCreateEvent>(create);
  static RawCollectionCreateEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $1.CreateEvent get create_1 => $_getN(0);
  @$pb.TagNumber(1)
  set create_1($1.CreateEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => clearField(1);
  @$pb.TagNumber(1)
  $1.CreateEvent ensureCreate_1() => $_ensure(0);
}

class RawCollectionSequentialChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RawCollectionSequentialChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..hasRequiredFields = false
  ;

  RawCollectionSequentialChangeEvent._() : super();
  factory RawCollectionSequentialChangeEvent({
    $1.ModifyEvent? modify,
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
  factory RawCollectionSequentialChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawCollectionSequentialChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawCollectionSequentialChangeEvent clone() => RawCollectionSequentialChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawCollectionSequentialChangeEvent copyWith(void Function(RawCollectionSequentialChangeEvent) updates) => super.copyWith((message) => updates(message as RawCollectionSequentialChangeEvent)) as RawCollectionSequentialChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawCollectionSequentialChangeEvent create() => RawCollectionSequentialChangeEvent._();
  RawCollectionSequentialChangeEvent createEmptyInstance() => create();
  static $pb.PbList<RawCollectionSequentialChangeEvent> createRepeated() => $pb.PbList<RawCollectionSequentialChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static RawCollectionSequentialChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawCollectionSequentialChangeEvent>(create);
  static RawCollectionSequentialChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify($1.ModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  $1.ModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get sequential => $_getBF(1);
  @$pb.TagNumber(2)
  set sequential($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSequential() => $_has(1);
  @$pb.TagNumber(2)
  void clearSequential() => clearField(2);
}

class RawCollectionSongsChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RawCollectionSongsChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songIds')
    ..hasRequiredFields = false
  ;

  RawCollectionSongsChangeEvent._() : super();
  factory RawCollectionSongsChangeEvent({
    $1.ModifyEvent? modify,
    $core.Iterable<$core.String>? songIds,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (songIds != null) {
      _result.songIds.addAll(songIds);
    }
    return _result;
  }
  factory RawCollectionSongsChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawCollectionSongsChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawCollectionSongsChangeEvent clone() => RawCollectionSongsChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawCollectionSongsChangeEvent copyWith(void Function(RawCollectionSongsChangeEvent) updates) => super.copyWith((message) => updates(message as RawCollectionSongsChangeEvent)) as RawCollectionSongsChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawCollectionSongsChangeEvent create() => RawCollectionSongsChangeEvent._();
  RawCollectionSongsChangeEvent createEmptyInstance() => create();
  static $pb.PbList<RawCollectionSongsChangeEvent> createRepeated() => $pb.PbList<RawCollectionSongsChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static RawCollectionSongsChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawCollectionSongsChangeEvent>(create);
  static RawCollectionSongsChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify($1.ModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  $1.ModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get songIds => $_getList(1);
}

