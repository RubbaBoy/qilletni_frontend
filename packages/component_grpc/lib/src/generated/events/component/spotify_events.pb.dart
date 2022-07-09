///
//  Generated code. Do not modify.
//  source: events/component/spotify_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $1;
import 'request/rpc_mapping.pb.dart' as $3;

import 'request/rpc_mapping.pbenum.dart' as $3;

class SpotifyCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyCreateEvent', createEmptyInstance: create)
    ..aOM<$1.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $1.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  SpotifyCreateEvent._() : super();
  factory SpotifyCreateEvent({
    $1.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory SpotifyCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyCreateEvent clone() => SpotifyCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyCreateEvent copyWith(void Function(SpotifyCreateEvent) updates) => super.copyWith((message) => updates(message as SpotifyCreateEvent)) as SpotifyCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyCreateEvent create() => SpotifyCreateEvent._();
  SpotifyCreateEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyCreateEvent> createRepeated() => $pb.PbList<SpotifyCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyCreateEvent>(create);
  static SpotifyCreateEvent? _defaultInstance;

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

class SpotifySequentialChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifySequentialChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..hasRequiredFields = false
  ;

  SpotifySequentialChangeEvent._() : super();
  factory SpotifySequentialChangeEvent({
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
  factory SpotifySequentialChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifySequentialChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifySequentialChangeEvent clone() => SpotifySequentialChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifySequentialChangeEvent copyWith(void Function(SpotifySequentialChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifySequentialChangeEvent)) as SpotifySequentialChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifySequentialChangeEvent create() => SpotifySequentialChangeEvent._();
  SpotifySequentialChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifySequentialChangeEvent> createRepeated() => $pb.PbList<SpotifySequentialChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifySequentialChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifySequentialChangeEvent>(create);
  static SpotifySequentialChangeEvent? _defaultInstance;

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

class SpotifyLimitChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyLimitChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SpotifyLimitChangeEvent._() : super();
  factory SpotifyLimitChangeEvent({
    $1.ModifyEvent? modify,
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
  factory SpotifyLimitChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyLimitChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyLimitChangeEvent clone() => SpotifyLimitChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyLimitChangeEvent copyWith(void Function(SpotifyLimitChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyLimitChangeEvent)) as SpotifyLimitChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyLimitChangeEvent create() => SpotifyLimitChangeEvent._();
  SpotifyLimitChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyLimitChangeEvent> createRepeated() => $pb.PbList<SpotifyLimitChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyLimitChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyLimitChangeEvent>(create);
  static SpotifyLimitChangeEvent? _defaultInstance;

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
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class SpotifyTypeChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyTypeChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..e<$3.SpotifyCollectionType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionType', $pb.PbFieldType.OE, defaultOrMaker: $3.SpotifyCollectionType.PLAYLIST, valueOf: $3.SpotifyCollectionType.valueOf, enumValues: $3.SpotifyCollectionType.values)
    ..hasRequiredFields = false
  ;

  SpotifyTypeChangeEvent._() : super();
  factory SpotifyTypeChangeEvent({
    $1.ModifyEvent? modify,
    $3.SpotifyCollectionType? collectionType,
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
  factory SpotifyTypeChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyTypeChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyTypeChangeEvent clone() => SpotifyTypeChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyTypeChangeEvent copyWith(void Function(SpotifyTypeChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyTypeChangeEvent)) as SpotifyTypeChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyTypeChangeEvent create() => SpotifyTypeChangeEvent._();
  SpotifyTypeChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyTypeChangeEvent> createRepeated() => $pb.PbList<SpotifyTypeChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyTypeChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyTypeChangeEvent>(create);
  static SpotifyTypeChangeEvent? _defaultInstance;

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
  $3.SpotifyCollectionType get collectionType => $_getN(1);
  @$pb.TagNumber(2)
  set collectionType($3.SpotifyCollectionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionType() => clearField(2);
}

class SpotifyDataChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyDataChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lookupData')
    ..hasRequiredFields = false
  ;

  SpotifyDataChangeEvent._() : super();
  factory SpotifyDataChangeEvent({
    $1.ModifyEvent? modify,
    $core.String? lookupData,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (lookupData != null) {
      _result.lookupData = lookupData;
    }
    return _result;
  }
  factory SpotifyDataChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyDataChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyDataChangeEvent clone() => SpotifyDataChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyDataChangeEvent copyWith(void Function(SpotifyDataChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyDataChangeEvent)) as SpotifyDataChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyDataChangeEvent create() => SpotifyDataChangeEvent._();
  SpotifyDataChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyDataChangeEvent> createRepeated() => $pb.PbList<SpotifyDataChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyDataChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyDataChangeEvent>(create);
  static SpotifyDataChangeEvent? _defaultInstance;

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
  $core.String get lookupData => $_getSZ(1);
  @$pb.TagNumber(2)
  set lookupData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLookupData() => $_has(1);
  @$pb.TagNumber(2)
  void clearLookupData() => clearField(2);
}

class SpotifyYearRangeChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyYearRangeChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOM<$3.YearRange>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yearRange', subBuilder: $3.YearRange.create)
    ..hasRequiredFields = false
  ;

  SpotifyYearRangeChangeEvent._() : super();
  factory SpotifyYearRangeChangeEvent({
    $1.ModifyEvent? modify,
    $3.YearRange? yearRange,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (yearRange != null) {
      _result.yearRange = yearRange;
    }
    return _result;
  }
  factory SpotifyYearRangeChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyYearRangeChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyYearRangeChangeEvent clone() => SpotifyYearRangeChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyYearRangeChangeEvent copyWith(void Function(SpotifyYearRangeChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyYearRangeChangeEvent)) as SpotifyYearRangeChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyYearRangeChangeEvent create() => SpotifyYearRangeChangeEvent._();
  SpotifyYearRangeChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyYearRangeChangeEvent> createRepeated() => $pb.PbList<SpotifyYearRangeChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyYearRangeChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyYearRangeChangeEvent>(create);
  static SpotifyYearRangeChangeEvent? _defaultInstance;

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
  $3.YearRange get yearRange => $_getN(1);
  @$pb.TagNumber(2)
  set yearRange($3.YearRange v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasYearRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearYearRange() => clearField(2);
  @$pb.TagNumber(2)
  $3.YearRange ensureYearRange() => $_ensure(1);
}

class SpotifyYearChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyYearChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yearRange', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SpotifyYearChangeEvent._() : super();
  factory SpotifyYearChangeEvent({
    $1.ModifyEvent? modify,
    $core.int? yearRange,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (yearRange != null) {
      _result.yearRange = yearRange;
    }
    return _result;
  }
  factory SpotifyYearChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyYearChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyYearChangeEvent clone() => SpotifyYearChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyYearChangeEvent copyWith(void Function(SpotifyYearChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyYearChangeEvent)) as SpotifyYearChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyYearChangeEvent create() => SpotifyYearChangeEvent._();
  SpotifyYearChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyYearChangeEvent> createRepeated() => $pb.PbList<SpotifyYearChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyYearChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyYearChangeEvent>(create);
  static SpotifyYearChangeEvent? _defaultInstance;

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
  $core.int get yearRange => $_getIZ(1);
  @$pb.TagNumber(2)
  set yearRange($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasYearRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearYearRange() => clearField(2);
}

class SpotifyGenreChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyGenreChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genre')
    ..hasRequiredFields = false
  ;

  SpotifyGenreChangeEvent._() : super();
  factory SpotifyGenreChangeEvent({
    $1.ModifyEvent? modify,
    $core.String? genre,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (genre != null) {
      _result.genre = genre;
    }
    return _result;
  }
  factory SpotifyGenreChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyGenreChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyGenreChangeEvent clone() => SpotifyGenreChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyGenreChangeEvent copyWith(void Function(SpotifyGenreChangeEvent) updates) => super.copyWith((message) => updates(message as SpotifyGenreChangeEvent)) as SpotifyGenreChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyGenreChangeEvent create() => SpotifyGenreChangeEvent._();
  SpotifyGenreChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SpotifyGenreChangeEvent> createRepeated() => $pb.PbList<SpotifyGenreChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SpotifyGenreChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyGenreChangeEvent>(create);
  static SpotifyGenreChangeEvent? _defaultInstance;

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
  $core.String get genre => $_getSZ(1);
  @$pb.TagNumber(2)
  set genre($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGenre() => $_has(1);
  @$pb.TagNumber(2)
  void clearGenre() => clearField(2);
}

