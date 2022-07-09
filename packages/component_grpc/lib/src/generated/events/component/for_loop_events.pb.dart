///
//  Generated code. Do not modify.
//  source: events/component/for_loop_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $1;

class ForLoopCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopCreateEvent', createEmptyInstance: create)
    ..aOM<$1.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $1.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  ForLoopCreateEvent._() : super();
  factory ForLoopCreateEvent({
    $1.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory ForLoopCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopCreateEvent clone() => ForLoopCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopCreateEvent copyWith(void Function(ForLoopCreateEvent) updates) => super.copyWith((message) => updates(message as ForLoopCreateEvent)) as ForLoopCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopCreateEvent create() => ForLoopCreateEvent._();
  ForLoopCreateEvent createEmptyInstance() => create();
  static $pb.PbList<ForLoopCreateEvent> createRepeated() => $pb.PbList<ForLoopCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static ForLoopCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopCreateEvent>(create);
  static ForLoopCreateEvent? _defaultInstance;

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

class ForLoopChildrenChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopChildrenChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'children')
    ..hasRequiredFields = false
  ;

  ForLoopChildrenChangeEvent._() : super();
  factory ForLoopChildrenChangeEvent({
    $1.ModifyEvent? modify,
    $core.Iterable<$core.String>? children,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (children != null) {
      _result.children.addAll(children);
    }
    return _result;
  }
  factory ForLoopChildrenChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopChildrenChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopChildrenChangeEvent clone() => ForLoopChildrenChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopChildrenChangeEvent copyWith(void Function(ForLoopChildrenChangeEvent) updates) => super.copyWith((message) => updates(message as ForLoopChildrenChangeEvent)) as ForLoopChildrenChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopChildrenChangeEvent create() => ForLoopChildrenChangeEvent._();
  ForLoopChildrenChangeEvent createEmptyInstance() => create();
  static $pb.PbList<ForLoopChildrenChangeEvent> createRepeated() => $pb.PbList<ForLoopChildrenChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static ForLoopChildrenChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopChildrenChangeEvent>(create);
  static ForLoopChildrenChangeEvent? _defaultInstance;

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
  $core.List<$core.String> get children => $_getList(1);
}

class ForLoopIterationsChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopIterationsChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iterations', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ForLoopIterationsChangeEvent._() : super();
  factory ForLoopIterationsChangeEvent({
    $1.ModifyEvent? modify,
    $core.int? iterations,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (iterations != null) {
      _result.iterations = iterations;
    }
    return _result;
  }
  factory ForLoopIterationsChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopIterationsChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopIterationsChangeEvent clone() => ForLoopIterationsChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopIterationsChangeEvent copyWith(void Function(ForLoopIterationsChangeEvent) updates) => super.copyWith((message) => updates(message as ForLoopIterationsChangeEvent)) as ForLoopIterationsChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopIterationsChangeEvent create() => ForLoopIterationsChangeEvent._();
  ForLoopIterationsChangeEvent createEmptyInstance() => create();
  static $pb.PbList<ForLoopIterationsChangeEvent> createRepeated() => $pb.PbList<ForLoopIterationsChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static ForLoopIterationsChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopIterationsChangeEvent>(create);
  static ForLoopIterationsChangeEvent? _defaultInstance;

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
  $core.int get iterations => $_getIZ(1);
  @$pb.TagNumber(2)
  set iterations($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIterations() => $_has(1);
  @$pb.TagNumber(2)
  void clearIterations() => clearField(2);
}

class ForLoopDurationChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopDurationChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ForLoopDurationChangeEvent._() : super();
  factory ForLoopDurationChangeEvent({
    $1.ModifyEvent? modify,
    $core.int? duration,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    return _result;
  }
  factory ForLoopDurationChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopDurationChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopDurationChangeEvent clone() => ForLoopDurationChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopDurationChangeEvent copyWith(void Function(ForLoopDurationChangeEvent) updates) => super.copyWith((message) => updates(message as ForLoopDurationChangeEvent)) as ForLoopDurationChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopDurationChangeEvent create() => ForLoopDurationChangeEvent._();
  ForLoopDurationChangeEvent createEmptyInstance() => create();
  static $pb.PbList<ForLoopDurationChangeEvent> createRepeated() => $pb.PbList<ForLoopDurationChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static ForLoopDurationChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopDurationChangeEvent>(create);
  static ForLoopDurationChangeEvent? _defaultInstance;

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
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);
}

class ForLoopAbsTimeChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopAbsTimeChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'absTime', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ForLoopAbsTimeChangeEvent._() : super();
  factory ForLoopAbsTimeChangeEvent({
    $1.ModifyEvent? modify,
    $core.int? absTime,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (absTime != null) {
      _result.absTime = absTime;
    }
    return _result;
  }
  factory ForLoopAbsTimeChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopAbsTimeChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopAbsTimeChangeEvent clone() => ForLoopAbsTimeChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopAbsTimeChangeEvent copyWith(void Function(ForLoopAbsTimeChangeEvent) updates) => super.copyWith((message) => updates(message as ForLoopAbsTimeChangeEvent)) as ForLoopAbsTimeChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopAbsTimeChangeEvent create() => ForLoopAbsTimeChangeEvent._();
  ForLoopAbsTimeChangeEvent createEmptyInstance() => create();
  static $pb.PbList<ForLoopAbsTimeChangeEvent> createRepeated() => $pb.PbList<ForLoopAbsTimeChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static ForLoopAbsTimeChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopAbsTimeChangeEvent>(create);
  static ForLoopAbsTimeChangeEvent? _defaultInstance;

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
  $core.int get absTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set absTime($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAbsTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearAbsTime() => clearField(2);
}

