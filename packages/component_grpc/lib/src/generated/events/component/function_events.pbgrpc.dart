///
//  Generated code. Do not modify.
//  source: events/component/function_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'function_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'function_events.pb.dart';

class FunctionServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.FunctionCreateEvent, $0.CreateComponentResponse>(
          '/FunctionService/Create',
          ($1.FunctionCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeChildren =
      $grpc.ClientMethod<$1.FunctionChangeChildrenEvent, $0.EmptyResponse>(
          '/FunctionService/ChangeChildren',
          ($1.FunctionChangeChildrenEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeName =
      $grpc.ClientMethod<$1.FunctionNameChangeEvent, $0.EmptyResponse>(
          '/FunctionService/ChangeName',
          ($1.FunctionNameChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  FunctionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.FunctionCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeChildren(
      $1.FunctionChangeChildrenEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeChildren, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeName(
      $1.FunctionNameChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeName, request, options: options);
  }
}

abstract class FunctionServiceBase extends $grpc.Service {
  $core.String get $name => 'FunctionService';

  FunctionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.FunctionCreateEvent, $0.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.FunctionCreateEvent.fromBuffer(value),
            ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.FunctionChangeChildrenEvent, $0.EmptyResponse>(
            'ChangeChildren',
            changeChildren_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.FunctionChangeChildrenEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.FunctionNameChangeEvent, $0.EmptyResponse>(
            'ChangeName',
            changeName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.FunctionNameChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.FunctionCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeChildren_Pre($grpc.ServiceCall call,
      $async.Future<$1.FunctionChangeChildrenEvent> request) async {
    return changeChildren(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeName_Pre($grpc.ServiceCall call,
      $async.Future<$1.FunctionNameChangeEvent> request) async {
    return changeName(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.FunctionCreateEvent request);
  $async.Future<$0.EmptyResponse> changeChildren(
      $grpc.ServiceCall call, $1.FunctionChangeChildrenEvent request);
  $async.Future<$0.EmptyResponse> changeName(
      $grpc.ServiceCall call, $1.FunctionNameChangeEvent request);
}
