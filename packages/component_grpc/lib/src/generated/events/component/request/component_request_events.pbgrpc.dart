///
//  Generated code. Do not modify.
//  source: events/component/request/component_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'component_request_events.pb.dart' as $1;
export 'component_request_events.pb.dart';

class ComponentRequestServiceClient extends $grpc.Client {
  static final _$requestStructure =
      $grpc.ClientMethod<$1.StructureRequestEvent, $1.StructureResponse>(
          '/ComponentRequestService/RequestStructure',
          ($1.StructureRequestEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StructureResponse.fromBuffer(value));

  ComponentRequestServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.StructureResponse> requestStructure(
      $1.StructureRequestEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestStructure, request, options: options);
  }
}

abstract class ComponentRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'ComponentRequestService';

  ComponentRequestServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.StructureRequestEvent, $1.StructureResponse>(
            'RequestStructure',
            requestStructure_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StructureRequestEvent.fromBuffer(value),
            ($1.StructureResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.StructureResponse> requestStructure_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.StructureRequestEvent> request) async {
    return requestStructure(call, await request);
  }

  $async.Future<$1.StructureResponse> requestStructure(
      $grpc.ServiceCall call, $1.StructureRequestEvent request);
}
