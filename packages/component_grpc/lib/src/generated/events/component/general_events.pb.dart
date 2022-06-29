///
//  Generated code. Do not modify.
//  source: events/component/general_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'component_events.pb.dart' as $0;

class DeleteEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..hasRequiredFields = false
  ;

  DeleteEvent._() : super();
  factory DeleteEvent({
    $core.String? componentId,
  }) {
    final _result = create();
    if (componentId != null) {
      _result.componentId = componentId;
    }
    return _result;
  }
  factory DeleteEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEvent clone() => DeleteEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEvent copyWith(void Function(DeleteEvent) updates) => super.copyWith((message) => updates(message as DeleteEvent)) as DeleteEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteEvent create() => DeleteEvent._();
  DeleteEvent createEmptyInstance() => create();
  static $pb.PbList<DeleteEvent> createRepeated() => $pb.PbList<DeleteEvent>();
  @$core.pragma('dart2js:noInline')
  static DeleteEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEvent>(create);
  static DeleteEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => clearField(1);
}

class RecolorEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecolorEvent', createEmptyInstance: create)
    ..aOM<$0.ModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: $0.ModifyEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RecolorEvent._() : super();
  factory RecolorEvent({
    $0.ModifyEvent? modify,
    $core.int? color,
  }) {
    final _result = create();
    if (modify != null) {
      _result.modify = modify;
    }
    if (color != null) {
      _result.color = color;
    }
    return _result;
  }
  factory RecolorEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecolorEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecolorEvent clone() => RecolorEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecolorEvent copyWith(void Function(RecolorEvent) updates) => super.copyWith((message) => updates(message as RecolorEvent)) as RecolorEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecolorEvent create() => RecolorEvent._();
  RecolorEvent createEmptyInstance() => create();
  static $pb.PbList<RecolorEvent> createRepeated() => $pb.PbList<RecolorEvent>();
  @$core.pragma('dart2js:noInline')
  static RecolorEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecolorEvent>(create);
  static RecolorEvent? _defaultInstance;

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
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);
}

