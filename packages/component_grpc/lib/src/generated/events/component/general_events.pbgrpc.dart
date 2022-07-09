///
//  Generated code. Do not modify.
//  source: events/component/general_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'general_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'general_events.pb.dart';

class GeneralServiceClient extends $grpc.Client {
  static final _$delete = $grpc.ClientMethod<$2.DeleteEvent, $1.BasicResponse>(
      '/GeneralService/Delete',
      ($2.DeleteEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$recolor =
      $grpc.ClientMethod<$2.RecolorEvent, $1.BasicResponse>(
          '/GeneralService/Recolor',
          ($2.RecolorEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  GeneralServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.BasicResponse> delete($2.DeleteEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> recolor($2.RecolorEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recolor, request, options: options);
  }
}

abstract class GeneralServiceBase extends $grpc.Service {
  $core.String get $name => 'GeneralService';

  GeneralServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.DeleteEvent, $1.BasicResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RecolorEvent, $1.BasicResponse>(
        'Recolor',
        recolor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RecolorEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.BasicResponse> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$2.DeleteEvent> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.BasicResponse> recolor_Pre(
      $grpc.ServiceCall call, $async.Future<$2.RecolorEvent> request) async {
    return recolor(call, await request);
  }

  $async.Future<$1.BasicResponse> delete(
      $grpc.ServiceCall call, $2.DeleteEvent request);
  $async.Future<$1.BasicResponse> recolor(
      $grpc.ServiceCall call, $2.RecolorEvent request);
}
