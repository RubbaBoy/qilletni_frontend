///
//  Generated code. Do not modify.
//  source: events/component/lastfm_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'lastfm_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'lastfm_events.pb.dart';

class LastFmServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.LastFmCreateEvent, $1.CreateComponentResponse>(
          '/LastFmService/Create',
          ($2.LastFmCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential =
      $grpc.ClientMethod<$2.LastFmSequentialChangeEvent, $1.BasicResponse>(
          '/LastFmService/ChangeSequential',
          ($2.LastFmSequentialChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeLimit =
      $grpc.ClientMethod<$2.LastFmLimitChangeEvent, $1.BasicResponse>(
          '/LastFmService/ChangeLimit',
          ($2.LastFmLimitChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeType =
      $grpc.ClientMethod<$2.LastFmTypeChangeEvent, $1.BasicResponse>(
          '/LastFmService/ChangeType',
          ($2.LastFmTypeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  LastFmServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateComponentResponse> create(
      $2.LastFmCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeSequential(
      $2.LastFmSequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeLimit(
      $2.LastFmLimitChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeLimit, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeType(
      $2.LastFmTypeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeType, request, options: options);
  }
}

abstract class LastFmServiceBase extends $grpc.Service {
  $core.String get $name => 'LastFmService';

  LastFmServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.LastFmCreateEvent, $1.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.LastFmCreateEvent.fromBuffer(value),
            ($1.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.LastFmSequentialChangeEvent, $1.BasicResponse>(
            'ChangeSequential',
            changeSequential_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.LastFmSequentialChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LastFmLimitChangeEvent, $1.BasicResponse>(
        'ChangeLimit',
        changeLimit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.LastFmLimitChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LastFmTypeChangeEvent, $1.BasicResponse>(
        'ChangeType',
        changeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.LastFmTypeChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.LastFmCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$2.LastFmSequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$1.BasicResponse> changeLimit_Pre($grpc.ServiceCall call,
      $async.Future<$2.LastFmLimitChangeEvent> request) async {
    return changeLimit(call, await request);
  }

  $async.Future<$1.BasicResponse> changeType_Pre($grpc.ServiceCall call,
      $async.Future<$2.LastFmTypeChangeEvent> request) async {
    return changeType(call, await request);
  }

  $async.Future<$1.CreateComponentResponse> create(
      $grpc.ServiceCall call, $2.LastFmCreateEvent request);
  $async.Future<$1.BasicResponse> changeSequential(
      $grpc.ServiceCall call, $2.LastFmSequentialChangeEvent request);
  $async.Future<$1.BasicResponse> changeLimit(
      $grpc.ServiceCall call, $2.LastFmLimitChangeEvent request);
  $async.Future<$1.BasicResponse> changeType(
      $grpc.ServiceCall call, $2.LastFmTypeChangeEvent request);
}
