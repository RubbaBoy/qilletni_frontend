///
//  Generated code. Do not modify.
//  source: events/component/request/component_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'component_request_events.pb.dart' as $0;
export 'component_request_events.pb.dart';

class ComponentRequestServiceClient extends $grpc.Client {
  static final _$requestStructure =
      $grpc.ClientMethod<$0.StructureRequestEvent, $0.StructureResponse>(
          '/ComponentRequestService/RequestStructure',
          ($0.StructureRequestEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.StructureResponse.fromBuffer(value));
  static final _$requestFunction =
      $grpc.ClientMethod<$0.FunctionRequestEvent, $0.FunctionResponse>(
          '/ComponentRequestService/RequestFunction',
          ($0.FunctionRequestEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FunctionResponse.fromBuffer(value));

  ComponentRequestServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.StructureResponse> requestStructure(
      $0.StructureRequestEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestStructure, request, options: options);
  }

  $grpc.ResponseFuture<$0.FunctionResponse> requestFunction(
      $0.FunctionRequestEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestFunction, request, options: options);
  }
}

abstract class ComponentRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'ComponentRequestService';

  ComponentRequestServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.StructureRequestEvent, $0.StructureResponse>(
            'RequestStructure',
            requestStructure_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.StructureRequestEvent.fromBuffer(value),
            ($0.StructureResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FunctionRequestEvent, $0.FunctionResponse>(
            'RequestFunction',
            requestFunction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FunctionRequestEvent.fromBuffer(value),
            ($0.FunctionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.StructureResponse> requestStructure_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StructureRequestEvent> request) async {
    return requestStructure(call, await request);
  }

  $async.Future<$0.FunctionResponse> requestFunction_Pre($grpc.ServiceCall call,
      $async.Future<$0.FunctionRequestEvent> request) async {
    return requestFunction(call, await request);
  }

  $async.Future<$0.StructureResponse> requestStructure(
      $grpc.ServiceCall call, $0.StructureRequestEvent request);
  $async.Future<$0.FunctionResponse> requestFunction(
      $grpc.ServiceCall call, $0.FunctionRequestEvent request);
}
