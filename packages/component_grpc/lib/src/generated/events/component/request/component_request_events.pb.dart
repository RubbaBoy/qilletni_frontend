///
//  Generated code. Do not modify.
//  source: events/component/request/component_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../error_response.pb.dart' as $1;
import 'rpc_mapping.pb.dart' as $2;

import 'rpc_mapping.pbenum.dart' as $2;

class StructureRequestEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StructureRequestEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boardId')
    ..hasRequiredFields = false
  ;

  StructureRequestEvent._() : super();
  factory StructureRequestEvent({
    $core.String? boardId,
  }) {
    final _result = create();
    if (boardId != null) {
      _result.boardId = boardId;
    }
    return _result;
  }
  factory StructureRequestEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StructureRequestEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StructureRequestEvent clone() => StructureRequestEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StructureRequestEvent copyWith(void Function(StructureRequestEvent) updates) => super.copyWith((message) => updates(message as StructureRequestEvent)) as StructureRequestEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructureRequestEvent create() => StructureRequestEvent._();
  StructureRequestEvent createEmptyInstance() => create();
  static $pb.PbList<StructureRequestEvent> createRepeated() => $pb.PbList<StructureRequestEvent>();
  @$core.pragma('dart2js:noInline')
  static StructureRequestEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StructureRequestEvent>(create);
  static StructureRequestEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get boardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set boardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardId() => clearField(1);
}

class FunctionRequestEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionRequestEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..hasRequiredFields = false
  ;

  FunctionRequestEvent._() : super();
  factory FunctionRequestEvent({
    $core.String? componentId,
  }) {
    final _result = create();
    if (componentId != null) {
      _result.componentId = componentId;
    }
    return _result;
  }
  factory FunctionRequestEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionRequestEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionRequestEvent clone() => FunctionRequestEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionRequestEvent copyWith(void Function(FunctionRequestEvent) updates) => super.copyWith((message) => updates(message as FunctionRequestEvent)) as FunctionRequestEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionRequestEvent create() => FunctionRequestEvent._();
  FunctionRequestEvent createEmptyInstance() => create();
  static $pb.PbList<FunctionRequestEvent> createRepeated() => $pb.PbList<FunctionRequestEvent>();
  @$core.pragma('dart2js:noInline')
  static FunctionRequestEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionRequestEvent>(create);
  static FunctionRequestEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => clearField(1);
}

class StructureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StructureResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..pc<ComponentResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'components', $pb.PbFieldType.PM, subBuilder: ComponentResponse.create)
    ..hasRequiredFields = false
  ;

  StructureResponse._() : super();
  factory StructureResponse({
    $1.ResponseError? error,
    $core.Iterable<ComponentResponse>? components,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (components != null) {
      _result.components.addAll(components);
    }
    return _result;
  }
  factory StructureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StructureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StructureResponse clone() => StructureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StructureResponse copyWith(void Function(StructureResponse) updates) => super.copyWith((message) => updates(message as StructureResponse)) as StructureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructureResponse create() => StructureResponse._();
  StructureResponse createEmptyInstance() => create();
  static $pb.PbList<StructureResponse> createRepeated() => $pb.PbList<StructureResponse>();
  @$core.pragma('dart2js:noInline')
  static StructureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StructureResponse>(create);
  static StructureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($1.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $1.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ComponentResponse> get components => $_getList(1);
}

class FunctionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionResponse', createEmptyInstance: create)
    ..aOM<$1.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $1.ResponseError.create)
    ..aOM<ComponentResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'component', subBuilder: ComponentResponse.create)
    ..hasRequiredFields = false
  ;

  FunctionResponse._() : super();
  factory FunctionResponse({
    $1.ResponseError? error,
    ComponentResponse? component,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (component != null) {
      _result.component = component;
    }
    return _result;
  }
  factory FunctionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionResponse clone() => FunctionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionResponse copyWith(void Function(FunctionResponse) updates) => super.copyWith((message) => updates(message as FunctionResponse)) as FunctionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionResponse create() => FunctionResponse._();
  FunctionResponse createEmptyInstance() => create();
  static $pb.PbList<FunctionResponse> createRepeated() => $pb.PbList<FunctionResponse>();
  @$core.pragma('dart2js:noInline')
  static FunctionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionResponse>(create);
  static FunctionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($1.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $1.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  ComponentResponse get component => $_getN(1);
  @$pb.TagNumber(2)
  set component(ComponentResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponent() => clearField(2);
  @$pb.TagNumber(2)
  ComponentResponse ensureComponent() => $_ensure(1);
}

enum ComponentResponse_Content {
  song, 
  forLoop, 
  functionComponent, 
  rawCollection, 
  lastFmCollection, 
  spotifyCollection, 
  notSet
}

class ComponentResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ComponentResponse_Content> _ComponentResponse_ContentByTag = {
    2 : ComponentResponse_Content.song,
    3 : ComponentResponse_Content.forLoop,
    4 : ComponentResponse_Content.functionComponent,
    5 : ComponentResponse_Content.rawCollection,
    6 : ComponentResponse_Content.lastFmCollection,
    7 : ComponentResponse_Content.spotifyCollection,
    0 : ComponentResponse_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComponentResponse', createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7])
    ..aOM<ComponentBase>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'base', subBuilder: ComponentBase.create)
    ..aOM<SongComponentResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: SongComponentResponse.create)
    ..aOM<ForLoopComponentResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forLoop', subBuilder: ForLoopComponentResponse.create)
    ..aOM<FunctionComponentResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'functionComponent', subBuilder: FunctionComponentResponse.create)
    ..aOM<RawCollectionComponentResponse>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawCollection', subBuilder: RawCollectionComponentResponse.create)
    ..aOM<LastFmCollectionComponentResponse>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFmCollection', subBuilder: LastFmCollectionComponentResponse.create)
    ..aOM<SpotifyCollectionComponentResponse>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spotifyCollection', subBuilder: SpotifyCollectionComponentResponse.create)
    ..hasRequiredFields = false
  ;

  ComponentResponse._() : super();
  factory ComponentResponse({
    ComponentBase? base,
    SongComponentResponse? song,
    ForLoopComponentResponse? forLoop,
    FunctionComponentResponse? functionComponent,
    RawCollectionComponentResponse? rawCollection,
    LastFmCollectionComponentResponse? lastFmCollection,
    SpotifyCollectionComponentResponse? spotifyCollection,
  }) {
    final _result = create();
    if (base != null) {
      _result.base = base;
    }
    if (song != null) {
      _result.song = song;
    }
    if (forLoop != null) {
      _result.forLoop = forLoop;
    }
    if (functionComponent != null) {
      _result.functionComponent = functionComponent;
    }
    if (rawCollection != null) {
      _result.rawCollection = rawCollection;
    }
    if (lastFmCollection != null) {
      _result.lastFmCollection = lastFmCollection;
    }
    if (spotifyCollection != null) {
      _result.spotifyCollection = spotifyCollection;
    }
    return _result;
  }
  factory ComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComponentResponse clone() => ComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComponentResponse copyWith(void Function(ComponentResponse) updates) => super.copyWith((message) => updates(message as ComponentResponse)) as ComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComponentResponse create() => ComponentResponse._();
  ComponentResponse createEmptyInstance() => create();
  static $pb.PbList<ComponentResponse> createRepeated() => $pb.PbList<ComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static ComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComponentResponse>(create);
  static ComponentResponse? _defaultInstance;

  ComponentResponse_Content whichContent() => _ComponentResponse_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ComponentBase get base => $_getN(0);
  @$pb.TagNumber(1)
  set base(ComponentBase v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBase() => $_has(0);
  @$pb.TagNumber(1)
  void clearBase() => clearField(1);
  @$pb.TagNumber(1)
  ComponentBase ensureBase() => $_ensure(0);

  @$pb.TagNumber(2)
  SongComponentResponse get song => $_getN(1);
  @$pb.TagNumber(2)
  set song(SongComponentResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSong() => $_has(1);
  @$pb.TagNumber(2)
  void clearSong() => clearField(2);
  @$pb.TagNumber(2)
  SongComponentResponse ensureSong() => $_ensure(1);

  @$pb.TagNumber(3)
  ForLoopComponentResponse get forLoop => $_getN(2);
  @$pb.TagNumber(3)
  set forLoop(ForLoopComponentResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasForLoop() => $_has(2);
  @$pb.TagNumber(3)
  void clearForLoop() => clearField(3);
  @$pb.TagNumber(3)
  ForLoopComponentResponse ensureForLoop() => $_ensure(2);

  @$pb.TagNumber(4)
  FunctionComponentResponse get functionComponent => $_getN(3);
  @$pb.TagNumber(4)
  set functionComponent(FunctionComponentResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFunctionComponent() => $_has(3);
  @$pb.TagNumber(4)
  void clearFunctionComponent() => clearField(4);
  @$pb.TagNumber(4)
  FunctionComponentResponse ensureFunctionComponent() => $_ensure(3);

  @$pb.TagNumber(5)
  RawCollectionComponentResponse get rawCollection => $_getN(4);
  @$pb.TagNumber(5)
  set rawCollection(RawCollectionComponentResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRawCollection() => $_has(4);
  @$pb.TagNumber(5)
  void clearRawCollection() => clearField(5);
  @$pb.TagNumber(5)
  RawCollectionComponentResponse ensureRawCollection() => $_ensure(4);

  @$pb.TagNumber(6)
  LastFmCollectionComponentResponse get lastFmCollection => $_getN(5);
  @$pb.TagNumber(6)
  set lastFmCollection(LastFmCollectionComponentResponse v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastFmCollection() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastFmCollection() => clearField(6);
  @$pb.TagNumber(6)
  LastFmCollectionComponentResponse ensureLastFmCollection() => $_ensure(5);

  @$pb.TagNumber(7)
  SpotifyCollectionComponentResponse get spotifyCollection => $_getN(6);
  @$pb.TagNumber(7)
  set spotifyCollection(SpotifyCollectionComponentResponse v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpotifyCollection() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpotifyCollection() => clearField(7);
  @$pb.TagNumber(7)
  SpotifyCollectionComponentResponse ensureSpotifyCollection() => $_ensure(6);
}

class ComponentBase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComponentBase', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ComponentBase._() : super();
  factory ComponentBase({
    $core.String? componentId,
    $core.int? color,
  }) {
    final _result = create();
    if (componentId != null) {
      _result.componentId = componentId;
    }
    if (color != null) {
      _result.color = color;
    }
    return _result;
  }
  factory ComponentBase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComponentBase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComponentBase clone() => ComponentBase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComponentBase copyWith(void Function(ComponentBase) updates) => super.copyWith((message) => updates(message as ComponentBase)) as ComponentBase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComponentBase create() => ComponentBase._();
  ComponentBase createEmptyInstance() => create();
  static $pb.PbList<ComponentBase> createRepeated() => $pb.PbList<ComponentBase>();
  @$core.pragma('dart2js:noInline')
  static ComponentBase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComponentBase>(create);
  static ComponentBase? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);
}

class SongComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SongComponentResponse', createEmptyInstance: create)
    ..aOM<$2.Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: $2.Song.create)
    ..hasRequiredFields = false
  ;

  SongComponentResponse._() : super();
  factory SongComponentResponse({
    $2.Song? song,
  }) {
    final _result = create();
    if (song != null) {
      _result.song = song;
    }
    return _result;
  }
  factory SongComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SongComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SongComponentResponse clone() => SongComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SongComponentResponse copyWith(void Function(SongComponentResponse) updates) => super.copyWith((message) => updates(message as SongComponentResponse)) as SongComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SongComponentResponse create() => SongComponentResponse._();
  SongComponentResponse createEmptyInstance() => create();
  static $pb.PbList<SongComponentResponse> createRepeated() => $pb.PbList<SongComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static SongComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SongComponentResponse>(create);
  static SongComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song($2.Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  $2.Song ensureSong() => $_ensure(0);
}

class ForLoopComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForLoopComponentResponse', createEmptyInstance: create)
    ..pc<ComponentResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'children', $pb.PbFieldType.PM, subBuilder: ComponentResponse.create)
    ..e<$2.LoopStrategy>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loopStrategy', $pb.PbFieldType.OE, defaultOrMaker: $2.LoopStrategy.NONE, valueOf: $2.LoopStrategy.valueOf, enumValues: $2.LoopStrategy.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iterations', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'absTime', protoName: 'absTime')
    ..hasRequiredFields = false
  ;

  ForLoopComponentResponse._() : super();
  factory ForLoopComponentResponse({
    $core.Iterable<ComponentResponse>? children,
    $2.LoopStrategy? loopStrategy,
    $core.int? iterations,
    $core.int? duration,
    $fixnum.Int64? absTime,
  }) {
    final _result = create();
    if (children != null) {
      _result.children.addAll(children);
    }
    if (loopStrategy != null) {
      _result.loopStrategy = loopStrategy;
    }
    if (iterations != null) {
      _result.iterations = iterations;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (absTime != null) {
      _result.absTime = absTime;
    }
    return _result;
  }
  factory ForLoopComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForLoopComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForLoopComponentResponse clone() => ForLoopComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForLoopComponentResponse copyWith(void Function(ForLoopComponentResponse) updates) => super.copyWith((message) => updates(message as ForLoopComponentResponse)) as ForLoopComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForLoopComponentResponse create() => ForLoopComponentResponse._();
  ForLoopComponentResponse createEmptyInstance() => create();
  static $pb.PbList<ForLoopComponentResponse> createRepeated() => $pb.PbList<ForLoopComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static ForLoopComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForLoopComponentResponse>(create);
  static ForLoopComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ComponentResponse> get children => $_getList(0);

  @$pb.TagNumber(2)
  $2.LoopStrategy get loopStrategy => $_getN(1);
  @$pb.TagNumber(2)
  set loopStrategy($2.LoopStrategy v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoopStrategy() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoopStrategy() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get iterations => $_getIZ(2);
  @$pb.TagNumber(3)
  set iterations($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIterations() => $_has(2);
  @$pb.TagNumber(3)
  void clearIterations() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(4)
  set duration($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(4)
  void clearDuration() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get absTime => $_getI64(4);
  @$pb.TagNumber(5)
  set absTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAbsTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearAbsTime() => clearField(5);
}

class FunctionComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FunctionComponentResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<ComponentResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'children', $pb.PbFieldType.PM, subBuilder: ComponentResponse.create)
    ..hasRequiredFields = false
  ;

  FunctionComponentResponse._() : super();
  factory FunctionComponentResponse({
    $core.String? name,
    $core.Iterable<ComponentResponse>? children,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (children != null) {
      _result.children.addAll(children);
    }
    return _result;
  }
  factory FunctionComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionComponentResponse clone() => FunctionComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionComponentResponse copyWith(void Function(FunctionComponentResponse) updates) => super.copyWith((message) => updates(message as FunctionComponentResponse)) as FunctionComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FunctionComponentResponse create() => FunctionComponentResponse._();
  FunctionComponentResponse createEmptyInstance() => create();
  static $pb.PbList<FunctionComponentResponse> createRepeated() => $pb.PbList<FunctionComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static FunctionComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionComponentResponse>(create);
  static FunctionComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ComponentResponse> get children => $_getList(1);
}

class RawCollectionComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RawCollectionComponentResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..pc<$2.Song>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: $2.Song.create)
    ..hasRequiredFields = false
  ;

  RawCollectionComponentResponse._() : super();
  factory RawCollectionComponentResponse({
    $core.bool? sequential,
    $core.Iterable<$2.Song>? songs,
  }) {
    final _result = create();
    if (sequential != null) {
      _result.sequential = sequential;
    }
    if (songs != null) {
      _result.songs.addAll(songs);
    }
    return _result;
  }
  factory RawCollectionComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawCollectionComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawCollectionComponentResponse clone() => RawCollectionComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawCollectionComponentResponse copyWith(void Function(RawCollectionComponentResponse) updates) => super.copyWith((message) => updates(message as RawCollectionComponentResponse)) as RawCollectionComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawCollectionComponentResponse create() => RawCollectionComponentResponse._();
  RawCollectionComponentResponse createEmptyInstance() => create();
  static $pb.PbList<RawCollectionComponentResponse> createRepeated() => $pb.PbList<RawCollectionComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static RawCollectionComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawCollectionComponentResponse>(create);
  static RawCollectionComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sequential => $_getBF(0);
  @$pb.TagNumber(1)
  set sequential($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequential() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequential() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$2.Song> get songs => $_getList(1);
}

class LastFmCollectionComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastFmCollectionComponentResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..e<$2.LastFmCollectionType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionType', $pb.PbFieldType.OE, defaultOrMaker: $2.LastFmCollectionType.TOP_TRACKS, valueOf: $2.LastFmCollectionType.valueOf, enumValues: $2.LastFmCollectionType.values)
    ..hasRequiredFields = false
  ;

  LastFmCollectionComponentResponse._() : super();
  factory LastFmCollectionComponentResponse({
    $core.bool? sequential,
    $core.int? limit,
    $2.LastFmCollectionType? collectionType,
  }) {
    final _result = create();
    if (sequential != null) {
      _result.sequential = sequential;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (collectionType != null) {
      _result.collectionType = collectionType;
    }
    return _result;
  }
  factory LastFmCollectionComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastFmCollectionComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastFmCollectionComponentResponse clone() => LastFmCollectionComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastFmCollectionComponentResponse copyWith(void Function(LastFmCollectionComponentResponse) updates) => super.copyWith((message) => updates(message as LastFmCollectionComponentResponse)) as LastFmCollectionComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastFmCollectionComponentResponse create() => LastFmCollectionComponentResponse._();
  LastFmCollectionComponentResponse createEmptyInstance() => create();
  static $pb.PbList<LastFmCollectionComponentResponse> createRepeated() => $pb.PbList<LastFmCollectionComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static LastFmCollectionComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastFmCollectionComponentResponse>(create);
  static LastFmCollectionComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sequential => $_getBF(0);
  @$pb.TagNumber(1)
  set sequential($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequential() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequential() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $2.LastFmCollectionType get collectionType => $_getN(2);
  @$pb.TagNumber(3)
  set collectionType($2.LastFmCollectionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCollectionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCollectionType() => clearField(3);
}

class SpotifyCollectionComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpotifyCollectionComponentResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequential')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..e<$2.SpotifyCollectionType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionType', $pb.PbFieldType.OE, defaultOrMaker: $2.SpotifyCollectionType.PLAYLIST, valueOf: $2.SpotifyCollectionType.valueOf, enumValues: $2.SpotifyCollectionType.values)
    ..hasRequiredFields = false
  ;

  SpotifyCollectionComponentResponse._() : super();
  factory SpotifyCollectionComponentResponse({
    $core.bool? sequential,
    $core.int? limit,
    $2.SpotifyCollectionType? collectionType,
  }) {
    final _result = create();
    if (sequential != null) {
      _result.sequential = sequential;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (collectionType != null) {
      _result.collectionType = collectionType;
    }
    return _result;
  }
  factory SpotifyCollectionComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpotifyCollectionComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpotifyCollectionComponentResponse clone() => SpotifyCollectionComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpotifyCollectionComponentResponse copyWith(void Function(SpotifyCollectionComponentResponse) updates) => super.copyWith((message) => updates(message as SpotifyCollectionComponentResponse)) as SpotifyCollectionComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpotifyCollectionComponentResponse create() => SpotifyCollectionComponentResponse._();
  SpotifyCollectionComponentResponse createEmptyInstance() => create();
  static $pb.PbList<SpotifyCollectionComponentResponse> createRepeated() => $pb.PbList<SpotifyCollectionComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static SpotifyCollectionComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpotifyCollectionComponentResponse>(create);
  static SpotifyCollectionComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sequential => $_getBF(0);
  @$pb.TagNumber(1)
  set sequential($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSequential() => $_has(0);
  @$pb.TagNumber(1)
  void clearSequential() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $2.SpotifyCollectionType get collectionType => $_getN(2);
  @$pb.TagNumber(3)
  set collectionType($2.SpotifyCollectionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCollectionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCollectionType() => clearField(3);
}

