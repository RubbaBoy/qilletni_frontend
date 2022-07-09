///
//  Generated code. Do not modify.
//  source: events/component/spotify_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spotify_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'spotify_events.pb.dart';

class SpotifyServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.SpotifyCreateEvent, $1.CreateComponentResponse>(
          '/SpotifyService/Create',
          ($2.SpotifyCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential =
      $grpc.ClientMethod<$2.SpotifySequentialChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeSequential',
          ($2.SpotifySequentialChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeLimit =
      $grpc.ClientMethod<$2.SpotifyLimitChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeLimit',
          ($2.SpotifyLimitChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeType =
      $grpc.ClientMethod<$2.SpotifyTypeChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeType',
          ($2.SpotifyTypeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeData =
      $grpc.ClientMethod<$2.SpotifyDataChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeData',
          ($2.SpotifyDataChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeYearRange =
      $grpc.ClientMethod<$2.SpotifyYearRangeChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeYearRange',
          ($2.SpotifyYearRangeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeYear =
      $grpc.ClientMethod<$2.SpotifyYearChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeYear',
          ($2.SpotifyYearChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeGenre =
      $grpc.ClientMethod<$2.SpotifyGenreChangeEvent, $1.BasicResponse>(
          '/SpotifyService/ChangeGenre',
          ($2.SpotifyGenreChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  SpotifyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateComponentResponse> create(
      $2.SpotifyCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeSequential(
      $2.SpotifySequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeLimit(
      $2.SpotifyLimitChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeLimit, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeType(
      $2.SpotifyTypeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeType, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeData(
      $2.SpotifyDataChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeData, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeYearRange(
      $2.SpotifyYearRangeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeYearRange, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeYear(
      $2.SpotifyYearChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeYear, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeGenre(
      $2.SpotifyGenreChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeGenre, request, options: options);
  }
}

abstract class SpotifyServiceBase extends $grpc.Service {
  $core.String get $name => 'SpotifyService';

  SpotifyServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.SpotifyCreateEvent, $1.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SpotifyCreateEvent.fromBuffer(value),
            ($1.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SpotifySequentialChangeEvent, $1.BasicResponse>(
            'ChangeSequential',
            changeSequential_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SpotifySequentialChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SpotifyLimitChangeEvent, $1.BasicResponse>(
            'ChangeLimit',
            changeLimit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SpotifyLimitChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SpotifyTypeChangeEvent, $1.BasicResponse>(
        'ChangeType',
        changeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SpotifyTypeChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SpotifyDataChangeEvent, $1.BasicResponse>(
        'ChangeData',
        changeData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SpotifyDataChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SpotifyYearRangeChangeEvent, $1.BasicResponse>(
            'ChangeYearRange',
            changeYearRange_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SpotifyYearRangeChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SpotifyYearChangeEvent, $1.BasicResponse>(
        'ChangeYear',
        changeYear_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SpotifyYearChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SpotifyGenreChangeEvent, $1.BasicResponse>(
            'ChangeGenre',
            changeGenre_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SpotifyGenreChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifySequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$1.BasicResponse> changeLimit_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyLimitChangeEvent> request) async {
    return changeLimit(call, await request);
  }

  $async.Future<$1.BasicResponse> changeType_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyTypeChangeEvent> request) async {
    return changeType(call, await request);
  }

  $async.Future<$1.BasicResponse> changeData_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyDataChangeEvent> request) async {
    return changeData(call, await request);
  }

  $async.Future<$1.BasicResponse> changeYearRange_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyYearRangeChangeEvent> request) async {
    return changeYearRange(call, await request);
  }

  $async.Future<$1.BasicResponse> changeYear_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyYearChangeEvent> request) async {
    return changeYear(call, await request);
  }

  $async.Future<$1.BasicResponse> changeGenre_Pre($grpc.ServiceCall call,
      $async.Future<$2.SpotifyGenreChangeEvent> request) async {
    return changeGenre(call, await request);
  }

  $async.Future<$1.CreateComponentResponse> create(
      $grpc.ServiceCall call, $2.SpotifyCreateEvent request);
  $async.Future<$1.BasicResponse> changeSequential(
      $grpc.ServiceCall call, $2.SpotifySequentialChangeEvent request);
  $async.Future<$1.BasicResponse> changeLimit(
      $grpc.ServiceCall call, $2.SpotifyLimitChangeEvent request);
  $async.Future<$1.BasicResponse> changeType(
      $grpc.ServiceCall call, $2.SpotifyTypeChangeEvent request);
  $async.Future<$1.BasicResponse> changeData(
      $grpc.ServiceCall call, $2.SpotifyDataChangeEvent request);
  $async.Future<$1.BasicResponse> changeYearRange(
      $grpc.ServiceCall call, $2.SpotifyYearRangeChangeEvent request);
  $async.Future<$1.BasicResponse> changeYear(
      $grpc.ServiceCall call, $2.SpotifyYearChangeEvent request);
  $async.Future<$1.BasicResponse> changeGenre(
      $grpc.ServiceCall call, $2.SpotifyGenreChangeEvent request);
}
