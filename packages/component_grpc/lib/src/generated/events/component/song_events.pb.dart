///
//  Generated code. Do not modify.
//  source: events/component/song_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $0;

class SongCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SongCreateEvent', createEmptyInstance: create)
    ..aOM<$0.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $0.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  SongCreateEvent._() : super();
  factory SongCreateEvent({
    $0.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory SongCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongCreateEvent clone() => SongCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongCreateEvent copyWith(void Function(SongCreateEvent) updates) => super.copyWith((message) => updates(message as SongCreateEvent)) as SongCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SongCreateEvent create() => SongCreateEvent._();
  SongCreateEvent createEmptyInstance() => create();
  static $pb.PbList<SongCreateEvent> createRepeated() => $pb.PbList<SongCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static SongCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongCreateEvent>(create);
  static SongCreateEvent? _defaultInstance;

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

class SongChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SongChangeEvent', createEmptyInstance: create)
    ..aOM<$0.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $0.ModifyEvent.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..hasRequiredFields = false
  ;

  SongChangeEvent._() : super();
  factory SongChangeEvent({
    $0.ModifyEvent? modify,
    $core.String? songId,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (songId != null) {
      _result.songId = songId;
    }
    return _result;
  }
  factory SongChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongChangeEvent clone() => SongChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongChangeEvent copyWith(void Function(SongChangeEvent) updates) => super.copyWith((message) => updates(message as SongChangeEvent)) as SongChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SongChangeEvent create() => SongChangeEvent._();
  SongChangeEvent createEmptyInstance() => create();
  static $pb.PbList<SongChangeEvent> createRepeated() => $pb.PbList<SongChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static SongChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongChangeEvent>(create);
  static SongChangeEvent? _defaultInstance;

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
  $core.String get songId => $_getSZ(1);
  @$pb.TagNumber(2)
  set songId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);
}

