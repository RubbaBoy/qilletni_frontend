///
//  Generated code. Do not modify.
//  source: events/component/component_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../error_response.pb.dart' as $2;
import 'request/component_request_events.pb.dart' as $0;

class HelloRequest_Inner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HelloRequest.Inner', createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'age', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HelloRequest_Inner._() : super();
  factory HelloRequest_Inner({
    $core.int? age,
  }) {
    final _result = create();
    if (age != null) {
      _result.age = age;
    }
    return _result;
  }
  factory HelloRequest_Inner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloRequest_Inner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloRequest_Inner clone() => HelloRequest_Inner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloRequest_Inner copyWith(void Function(HelloRequest_Inner) updates) => super.copyWith((message) => updates(message as HelloRequest_Inner)) as HelloRequest_Inner; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloRequest_Inner create() => HelloRequest_Inner._();
  HelloRequest_Inner createEmptyInstance() => create();
  static $pb.PbList<HelloRequest_Inner> createRepeated() => $pb.PbList<HelloRequest_Inner>();
  @$core.pragma('dart2js:noInline')
  static HelloRequest_Inner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloRequest_Inner>(create);
  static HelloRequest_Inner? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get age => $_getIZ(0);
  @$pb.TagNumber(2)
  set age($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAge() => $_has(0);
  @$pb.TagNumber(2)
  void clearAge() => clearField(2);
}

class HelloRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HelloRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  HelloRequest._() : super();
  factory HelloRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory HelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloRequest clone() => HelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloRequest copyWith(void Function(HelloRequest) updates) => super.copyWith((message) => updates(message as HelloRequest)) as HelloRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloRequest create() => HelloRequest._();
  HelloRequest createEmptyInstance() => create();
  static $pb.PbList<HelloRequest> createRepeated() => $pb.PbList<HelloRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloRequest>(create);
  static HelloRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class HelloReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HelloReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  HelloReply._() : super();
  factory HelloReply({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory HelloReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloReply clone() => HelloReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloReply copyWith(void Function(HelloReply) updates) => super.copyWith((message) => updates(message as HelloReply)) as HelloReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloReply create() => HelloReply._();
  HelloReply createEmptyInstance() => create();
  static $pb.PbList<HelloReply> createRepeated() => $pb.PbList<HelloReply>();
  @$core.pragma('dart2js:noInline')
  static HelloReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloReply>(create);
  static HelloReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

enum BasicResponse_Response {
  error, 
  component, 
  notSet
}

class BasicResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BasicResponse_Response> _BasicResponse_ResponseByTag = {
    1 : BasicResponse_Response.error,
    2 : BasicResponse_Response.component,
    0 : BasicResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BasicResponse', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$2.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $2.ResponseError.create)
    ..aOM<$0.ComponentResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'component', subBuilder: $0.ComponentResponse.create)
    ..hasRequiredFields = false
  ;

  BasicResponse._() : super();
  factory BasicResponse({
    $2.ResponseError? error,
    $0.ComponentResponse? component,
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
  factory BasicResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BasicResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BasicResponse clone() => BasicResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BasicResponse copyWith(void Function(BasicResponse) updates) => super.copyWith((message) => updates(message as BasicResponse)) as BasicResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BasicResponse create() => BasicResponse._();
  BasicResponse createEmptyInstance() => create();
  static $pb.PbList<BasicResponse> createRepeated() => $pb.PbList<BasicResponse>();
  @$core.pragma('dart2js:noInline')
  static BasicResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BasicResponse>(create);
  static BasicResponse? _defaultInstance;

  BasicResponse_Response whichResponse() => _BasicResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $2.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($2.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ComponentResponse get component => $_getN(1);
  @$pb.TagNumber(2)
  set component($0.ComponentResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponent() => clearField(2);
  @$pb.TagNumber(2)
  $0.ComponentResponse ensureComponent() => $_ensure(1);
}

class CreateComponentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateComponentResponse', createEmptyInstance: create)
    ..aOM<$2.ResponseError>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $2.ResponseError.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..hasRequiredFields = false
  ;

  CreateComponentResponse._() : super();
  factory CreateComponentResponse({
    $2.ResponseError? error,
    $core.String? componentId,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (componentId != null) {
      _result.componentId = componentId;
    }
    return _result;
  }
  factory CreateComponentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateComponentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateComponentResponse clone() => CreateComponentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateComponentResponse copyWith(void Function(CreateComponentResponse) updates) => super.copyWith((message) => updates(message as CreateComponentResponse)) as CreateComponentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateComponentResponse create() => CreateComponentResponse._();
  CreateComponentResponse createEmptyInstance() => create();
  static $pb.PbList<CreateComponentResponse> createRepeated() => $pb.PbList<CreateComponentResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateComponentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateComponentResponse>(create);
  static CreateComponentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ResponseError get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($2.ResponseError v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseError ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get componentId => $_getSZ(1);
  @$pb.TagNumber(2)
  set componentId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComponentId() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponentId() => clearField(2);
}

class ModifyEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentId')
    ..hasRequiredFields = false
  ;

  ModifyEvent._() : super();
  factory ModifyEvent({
    $core.String? componentId,
  }) {
    final _result = create();
    if (componentId != null) {
      _result.componentId = componentId;
    }
    return _result;
  }
  factory ModifyEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyEvent clone() => ModifyEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyEvent copyWith(void Function(ModifyEvent) updates) => super.copyWith((message) => updates(message as ModifyEvent)) as ModifyEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyEvent create() => ModifyEvent._();
  ModifyEvent createEmptyInstance() => create();
  static $pb.PbList<ModifyEvent> createRepeated() => $pb.PbList<ModifyEvent>();
  @$core.pragma('dart2js:noInline')
  static ModifyEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyEvent>(create);
  static ModifyEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentId => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => clearField(1);
}

class CreateEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateEvent', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boardId')
    ..hasRequiredFields = false
  ;

  CreateEvent._() : super();
  factory CreateEvent({
    $core.String? boardId,
  }) {
    final _result = create();
    if (boardId != null) {
      _result.boardId = boardId;
    }
    return _result;
  }
  factory CreateEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateEvent clone() => CreateEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateEvent copyWith(void Function(CreateEvent) updates) => super.copyWith((message) => updates(message as CreateEvent)) as CreateEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateEvent create() => CreateEvent._();
  CreateEvent createEmptyInstance() => create();
  static $pb.PbList<CreateEvent> createRepeated() => $pb.PbList<CreateEvent>();
  @$core.pragma('dart2js:noInline')
  static CreateEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateEvent>(create);
  static CreateEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get boardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set boardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardId() => clearField(1);
}

