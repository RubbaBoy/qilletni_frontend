///
//  Generated code. Do not modify.
//  source: events/component/function_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $1;

class FunctionCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionCreateEvent', createEmptyInstance: create)
    ..aOM<$1.CreateEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'create', subBuilder: $1.CreateEvent.create)
    ..hasRequiredFields = false
  ;

  FunctionCreateEvent._() : super();
  factory FunctionCreateEvent({
    $1.CreateEvent? create_1,
  }) {
    final _result = create();
    if (create_1 != null) {
      _result.create_1 = create_1;
    }
    return _result;
  }
  factory FunctionCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionCreateEvent clone() => FunctionCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionCreateEvent copyWith(void Function(FunctionCreateEvent) updates) => super.copyWith((message) => updates(message as FunctionCreateEvent)) as FunctionCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionCreateEvent create() => FunctionCreateEvent._();
  FunctionCreateEvent createEmptyInstance() => create();
  static $pb.PbList<FunctionCreateEvent> createRepeated() => $pb.PbList<FunctionCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static FunctionCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionCreateEvent>(create);
  static FunctionCreateEvent? _defaultInstance;

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

class FunctionChangeChildrenEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionChangeChildrenEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'children')
    ..hasRequiredFields = false
  ;

  FunctionChangeChildrenEvent._() : super();
  factory FunctionChangeChildrenEvent({
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
  factory FunctionChangeChildrenEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionChangeChildrenEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionChangeChildrenEvent clone() => FunctionChangeChildrenEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionChangeChildrenEvent copyWith(void Function(FunctionChangeChildrenEvent) updates) => super.copyWith((message) => updates(message as FunctionChangeChildrenEvent)) as FunctionChangeChildrenEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionChangeChildrenEvent create() => FunctionChangeChildrenEvent._();
  FunctionChangeChildrenEvent createEmptyInstance() => create();
  static $pb.PbList<FunctionChangeChildrenEvent> createRepeated() => $pb.PbList<FunctionChangeChildrenEvent>();
  @$core.pragma('dart2js:noInline')
  static FunctionChangeChildrenEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionChangeChildrenEvent>(create);
  static FunctionChangeChildrenEvent? _defaultInstance;

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

class FunctionNameChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionNameChangeEvent', createEmptyInstance: create)
    ..aOM<$1.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $1.ModifyEvent.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  FunctionNameChangeEvent._() : super();
  factory FunctionNameChangeEvent({
    $1.ModifyEvent? modify,
    $core.String? name,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory FunctionNameChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionNameChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionNameChangeEvent clone() => FunctionNameChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionNameChangeEvent copyWith(void Function(FunctionNameChangeEvent) updates) => super.copyWith((message) => updates(message as FunctionNameChangeEvent)) as FunctionNameChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionNameChangeEvent create() => FunctionNameChangeEvent._();
  FunctionNameChangeEvent createEmptyInstance() => create();
  static $pb.PbList<FunctionNameChangeEvent> createRepeated() => $pb.PbList<FunctionNameChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static FunctionNameChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionNameChangeEvent>(create);
  static FunctionNameChangeEvent? _defaultInstance;

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
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

