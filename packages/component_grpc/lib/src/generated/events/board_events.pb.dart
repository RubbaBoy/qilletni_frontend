///
//  Generated code. Do not modify.
//  source: events/board_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'error_response.pb.dart' as $3;
import 'component/request/rpc_mapping.pb.dart' as $4;

class BoardCreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardCreateEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  BoardCreateEvent._() : super();
  factory BoardCreateEvent({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory BoardCreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardCreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardCreateEvent clone() => BoardCreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardCreateEvent copyWith(void Function(BoardCreateEvent) updates) => super.copyWith((message) => updates(message as BoardCreateEvent)) as BoardCreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardCreateEvent create() => BoardCreateEvent._();
  BoardCreateEvent createEmptyInstance() => create();
  static $pb.PbList<BoardCreateEvent> createRepeated() => $pb.PbList<BoardCreateEvent>();
  @$core.pragma('dart2js:noInline')
  static BoardCreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardCreateEvent>(create);
  static BoardCreateEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class BoardCreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardCreateResponse', createEmptyInstance: create)
    ..aOM<$3.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $3.ResponseError.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boardId')
    ..hasRequiredFields = false
  ;

  BoardCreateResponse._() : super();
  factory BoardCreateResponse({
    $3.ResponseError? error,
    $core.String? boardId,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (boardId != null) {
      _result.boardId = boardId;
    }
    return _result;
  }
  factory BoardCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardCreateResponse clone() => BoardCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardCreateResponse copyWith(void Function(BoardCreateResponse) updates) => super.copyWith((message) => updates(message as BoardCreateResponse)) as BoardCreateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardCreateResponse create() => BoardCreateResponse._();
  BoardCreateResponse createEmptyInstance() => create();
  static $pb.PbList<BoardCreateResponse> createRepeated() => $pb.PbList<BoardCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static BoardCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardCreateResponse>(create);
  static BoardCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($3.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $3.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get boardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set boardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoardId() => clearField(2);
}

class BoardModifyEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardModifyEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boardId')
    ..hasRequiredFields = false
  ;

  BoardModifyEvent._() : super();
  factory BoardModifyEvent({
    $core.String? boardId,
  }) {
    final _result = create();
    if (boardId != null) {
      _result.boardId = boardId;
    }
    return _result;
  }
  factory BoardModifyEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardModifyEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardModifyEvent clone() => BoardModifyEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardModifyEvent copyWith(void Function(BoardModifyEvent) updates) => super.copyWith((message) => updates(message as BoardModifyEvent)) as BoardModifyEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardModifyEvent create() => BoardModifyEvent._();
  BoardModifyEvent createEmptyInstance() => create();
  static $pb.PbList<BoardModifyEvent> createRepeated() => $pb.PbList<BoardModifyEvent>();
  @$core.pragma('dart2js:noInline')
  static BoardModifyEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardModifyEvent>(create);
  static BoardModifyEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get boardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set boardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardId() => clearField(1);
}

class BoardNameChangeEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardNameChangeEvent', createEmptyInstance: create)
    ..aOM<BoardModifyEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modify', subBuilder: BoardModifyEvent.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  BoardNameChangeEvent._() : super();
  factory BoardNameChangeEvent({
    BoardModifyEvent? modify,
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
  factory BoardNameChangeEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardNameChangeEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardNameChangeEvent clone() => BoardNameChangeEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardNameChangeEvent copyWith(void Function(BoardNameChangeEvent) updates) => super.copyWith((message) => updates(message as BoardNameChangeEvent)) as BoardNameChangeEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardNameChangeEvent create() => BoardNameChangeEvent._();
  BoardNameChangeEvent createEmptyInstance() => create();
  static $pb.PbList<BoardNameChangeEvent> createRepeated() => $pb.PbList<BoardNameChangeEvent>();
  @$core.pragma('dart2js:noInline')
  static BoardNameChangeEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardNameChangeEvent>(create);
  static BoardNameChangeEvent? _defaultInstance;

  @$pb.TagNumber(1)
  BoardModifyEvent get modify => $_getN(0);
  @$pb.TagNumber(1)
  set modify(BoardModifyEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModify() => $_has(0);
  @$pb.TagNumber(1)
  void clearModify() => clearField(1);
  @$pb.TagNumber(1)
  BoardModifyEvent ensureModify() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class BoardsRequestEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardsRequestEvent', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  BoardsRequestEvent._() : super();
  factory BoardsRequestEvent() => create();
  factory BoardsRequestEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardsRequestEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardsRequestEvent clone() => BoardsRequestEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardsRequestEvent copyWith(void Function(BoardsRequestEvent) updates) => super.copyWith((message) => updates(message as BoardsRequestEvent)) as BoardsRequestEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardsRequestEvent create() => BoardsRequestEvent._();
  BoardsRequestEvent createEmptyInstance() => create();
  static $pb.PbList<BoardsRequestEvent> createRepeated() => $pb.PbList<BoardsRequestEvent>();
  @$core.pragma('dart2js:noInline')
  static BoardsRequestEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardsRequestEvent>(create);
  static BoardsRequestEvent? _defaultInstance;
}

class BoardsRequestResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoardsRequestResponse', createEmptyInstance: create)
    ..pc<$4.Board>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boards', $pb.PbFieldType.PM, subBuilder: $4.Board.create)
    ..hasRequiredFields = false
  ;

  BoardsRequestResponse._() : super();
  factory BoardsRequestResponse({
    $core.Iterable<$4.Board>? boards,
  }) {
    final _result = create();
    if (boards != null) {
      _result.boards.addAll(boards);
    }
    return _result;
  }
  factory BoardsRequestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardsRequestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardsRequestResponse clone() => BoardsRequestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardsRequestResponse copyWith(void Function(BoardsRequestResponse) updates) => super.copyWith((message) => updates(message as BoardsRequestResponse)) as BoardsRequestResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoardsRequestResponse create() => BoardsRequestResponse._();
  BoardsRequestResponse createEmptyInstance() => create();
  static $pb.PbList<BoardsRequestResponse> createRepeated() => $pb.PbList<BoardsRequestResponse>();
  @$core.pragma('dart2js:noInline')
  static BoardsRequestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardsRequestResponse>(create);
  static BoardsRequestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.Board> get boards => $_getList(0);
}

