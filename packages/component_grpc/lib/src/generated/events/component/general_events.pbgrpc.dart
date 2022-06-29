///
//  Generated code. Do not modify.
//  source: events/component/general_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'general_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'general_events.pb.dart';

class GeneralServiceClient extends $grpc.Client {
  static final _$delete = $grpc.ClientMethod<$1.DeleteEvent, $0.EmptyResponse>(
      '/GeneralService/Delete',
      ($1.DeleteEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$recolor =
      $grpc.ClientMethod<$1.RecolorEvent, $0.EmptyResponse>(
          '/GeneralService/Recolor',
          ($1.RecolorEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  GeneralServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.EmptyResponse> delete($1.DeleteEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> recolor($1.RecolorEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recolor, request, options: options);
  }
}

abstract class GeneralServiceBase extends $grpc.Service {
  $core.String get $name => 'GeneralService';

  GeneralServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.DeleteEvent, $0.EmptyResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RecolorEvent, $0.EmptyResponse>(
        'Recolor',
        recolor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RecolorEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EmptyResponse> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.DeleteEvent> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.EmptyResponse> recolor_Pre(
      $grpc.ServiceCall call, $async.Future<$1.RecolorEvent> request) async {
    return recolor(call, await request);
  }

  $async.Future<$0.EmptyResponse> delete(
      $grpc.ServiceCall call, $1.DeleteEvent request);
  $async.Future<$0.EmptyResponse> recolor(
      $grpc.ServiceCall call, $1.RecolorEvent request);
}
