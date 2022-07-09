///
//  Generated code. Do not modify.
//  source: events/component/function_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'function_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'function_events.pb.dart';

class FunctionServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.FunctionCreateEvent, $1.CreateComponentResponse>(
          '/FunctionService/Create',
          ($2.FunctionCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateComponentResponse.fromBuffer(value));
  static final _$changeChildren =
      $grpc.ClientMethod<$2.FunctionChangeChildrenEvent, $1.BasicResponse>(
          '/FunctionService/ChangeChildren',
          ($2.FunctionChangeChildrenEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeName =
      $grpc.ClientMethod<$2.FunctionNameChangeEvent, $1.BasicResponse>(
          '/FunctionService/ChangeName',
          ($2.FunctionNameChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  FunctionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateComponentResponse> create(
      $2.FunctionCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeChildren(
      $2.FunctionChangeChildrenEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeChildren, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeName(
      $2.FunctionNameChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeName, request, options: options);
  }
}

abstract class FunctionServiceBase extends $grpc.Service {
  $core.String get $name => 'FunctionService';

  FunctionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.FunctionCreateEvent, $1.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FunctionCreateEvent.fromBuffer(value),
            ($1.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FunctionChangeChildrenEvent, $1.BasicResponse>(
            'ChangeChildren',
            changeChildren_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FunctionChangeChildrenEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FunctionNameChangeEvent, $1.BasicResponse>(
            'ChangeName',
            changeName_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FunctionNameChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.FunctionCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeChildren_Pre($grpc.ServiceCall call,
      $async.Future<$2.FunctionChangeChildrenEvent> request) async {
    return changeChildren(call, await request);
  }

  $async.Future<$1.BasicResponse> changeName_Pre($grpc.ServiceCall call,
      $async.Future<$2.FunctionNameChangeEvent> request) async {
    return changeName(call, await request);
  }

  $async.Future<$1.CreateComponentResponse> create(
      $grpc.ServiceCall call, $2.FunctionCreateEvent request);
  $async.Future<$1.BasicResponse> changeChildren(
      $grpc.ServiceCall call, $2.FunctionChangeChildrenEvent request);
  $async.Future<$1.BasicResponse> changeName(
      $grpc.ServiceCall call, $2.FunctionNameChangeEvent request);
}
