///
//  Generated code. Do not modify.
//  source: events/component/lastfm_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'lastfm_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'lastfm_events.pb.dart';

class LastFmServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.LastFmCreateEvent, $0.CreateComponentResponse>(
          '/LastFmService/Create',
          ($1.LastFmCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential =
      $grpc.ClientMethod<$1.LastFmSequentialChangeEvent, $0.EmptyResponse>(
          '/LastFmService/ChangeSequential',
          ($1.LastFmSequentialChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeLimit =
      $grpc.ClientMethod<$1.LastFmLimitChangeEvent, $0.EmptyResponse>(
          '/LastFmService/ChangeLimit',
          ($1.LastFmLimitChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeType =
      $grpc.ClientMethod<$1.LastFmTypeChangeEvent, $0.EmptyResponse>(
          '/LastFmService/ChangeType',
          ($1.LastFmTypeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  LastFmServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.LastFmCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeSequential(
      $1.LastFmSequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeLimit(
      $1.LastFmLimitChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeLimit, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeType(
      $1.LastFmTypeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeType, request, options: options);
  }
}

abstract class LastFmServiceBase extends $grpc.Service {
  $core.String get $name => 'LastFmService';

  LastFmServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.LastFmCreateEvent, $0.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.LastFmCreateEvent.fromBuffer(value),
            ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.LastFmSequentialChangeEvent, $0.EmptyResponse>(
            'ChangeSequential',
            changeSequential_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.LastFmSequentialChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LastFmLimitChangeEvent, $0.EmptyResponse>(
        'ChangeLimit',
        changeLimit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.LastFmLimitChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LastFmTypeChangeEvent, $0.EmptyResponse>(
        'ChangeType',
        changeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.LastFmTypeChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.LastFmCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$1.LastFmSequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeLimit_Pre($grpc.ServiceCall call,
      $async.Future<$1.LastFmLimitChangeEvent> request) async {
    return changeLimit(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeType_Pre($grpc.ServiceCall call,
      $async.Future<$1.LastFmTypeChangeEvent> request) async {
    return changeType(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.LastFmCreateEvent request);
  $async.Future<$0.EmptyResponse> changeSequential(
      $grpc.ServiceCall call, $1.LastFmSequentialChangeEvent request);
  $async.Future<$0.EmptyResponse> changeLimit(
      $grpc.ServiceCall call, $1.LastFmLimitChangeEvent request);
  $async.Future<$0.EmptyResponse> changeType(
      $grpc.ServiceCall call, $1.LastFmTypeChangeEvent request);
}
