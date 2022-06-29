///
//  Generated code. Do not modify.
//  source: events/component/spotify_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spotify_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'spotify_events.pb.dart';

class SpotifyServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.SpotifyCreateEvent, $0.CreateComponentResponse>(
          '/SpotifyService/Create',
          ($1.SpotifyCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential =
      $grpc.ClientMethod<$1.SpotifySequentialChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeSequential',
          ($1.SpotifySequentialChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeLimit =
      $grpc.ClientMethod<$1.SpotifyLimitChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeLimit',
          ($1.SpotifyLimitChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeType =
      $grpc.ClientMethod<$1.SpotifyTypeChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeType',
          ($1.SpotifyTypeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeData =
      $grpc.ClientMethod<$1.SpotifyDataChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeData',
          ($1.SpotifyDataChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeYearRange =
      $grpc.ClientMethod<$1.SpotifyYearRangeChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeYearRange',
          ($1.SpotifyYearRangeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeYear =
      $grpc.ClientMethod<$1.SpotifyYearChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeYear',
          ($1.SpotifyYearChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeGenre =
      $grpc.ClientMethod<$1.SpotifyGenreChangeEvent, $0.EmptyResponse>(
          '/SpotifyService/ChangeGenre',
          ($1.SpotifyGenreChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  SpotifyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.SpotifyCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeSequential(
      $1.SpotifySequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeLimit(
      $1.SpotifyLimitChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeLimit, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeType(
      $1.SpotifyTypeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeType, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeData(
      $1.SpotifyDataChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeData, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeYearRange(
      $1.SpotifyYearRangeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeYearRange, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeYear(
      $1.SpotifyYearChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeYear, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeGenre(
      $1.SpotifyGenreChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeGenre, request, options: options);
  }
}

abstract class SpotifyServiceBase extends $grpc.Service {
  $core.String get $name => 'SpotifyService';

  SpotifyServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.SpotifyCreateEvent, $0.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SpotifyCreateEvent.fromBuffer(value),
            ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SpotifySequentialChangeEvent, $0.EmptyResponse>(
            'ChangeSequential',
            changeSequential_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SpotifySequentialChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SpotifyLimitChangeEvent, $0.EmptyResponse>(
            'ChangeLimit',
            changeLimit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SpotifyLimitChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SpotifyTypeChangeEvent, $0.EmptyResponse>(
        'ChangeType',
        changeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SpotifyTypeChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SpotifyDataChangeEvent, $0.EmptyResponse>(
        'ChangeData',
        changeData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SpotifyDataChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SpotifyYearRangeChangeEvent, $0.EmptyResponse>(
            'ChangeYearRange',
            changeYearRange_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SpotifyYearRangeChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SpotifyYearChangeEvent, $0.EmptyResponse>(
        'ChangeYear',
        changeYear_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SpotifyYearChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SpotifyGenreChangeEvent, $0.EmptyResponse>(
            'ChangeGenre',
            changeGenre_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SpotifyGenreChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifySequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeLimit_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyLimitChangeEvent> request) async {
    return changeLimit(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeType_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyTypeChangeEvent> request) async {
    return changeType(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeData_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyDataChangeEvent> request) async {
    return changeData(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeYearRange_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyYearRangeChangeEvent> request) async {
    return changeYearRange(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeYear_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyYearChangeEvent> request) async {
    return changeYear(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeGenre_Pre($grpc.ServiceCall call,
      $async.Future<$1.SpotifyGenreChangeEvent> request) async {
    return changeGenre(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.SpotifyCreateEvent request);
  $async.Future<$0.EmptyResponse> changeSequential(
      $grpc.ServiceCall call, $1.SpotifySequentialChangeEvent request);
  $async.Future<$0.EmptyResponse> changeLimit(
      $grpc.ServiceCall call, $1.SpotifyLimitChangeEvent request);
  $async.Future<$0.EmptyResponse> changeType(
      $grpc.ServiceCall call, $1.SpotifyTypeChangeEvent request);
  $async.Future<$0.EmptyResponse> changeData(
      $grpc.ServiceCall call, $1.SpotifyDataChangeEvent request);
  $async.Future<$0.EmptyResponse> changeYearRange(
      $grpc.ServiceCall call, $1.SpotifyYearRangeChangeEvent request);
  $async.Future<$0.EmptyResponse> changeYear(
      $grpc.ServiceCall call, $1.SpotifyYearChangeEvent request);
  $async.Future<$0.EmptyResponse> changeGenre(
      $grpc.ServiceCall call, $1.SpotifyGenreChangeEvent request);
}
