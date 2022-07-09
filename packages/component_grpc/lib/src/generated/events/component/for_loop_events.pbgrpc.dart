///
//  Generated code. Do not modify.
//  source: events/component/for_loop_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'for_loop_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'for_loop_events.pb.dart';

class ForLoopServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.ForLoopCreateEvent, $1.CreateComponentResponse>(
          '/ForLoopService/Create',
          ($2.ForLoopCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CreateComponentResponse.fromBuffer(value));
  static final _$changeChildren =
      $grpc.ClientMethod<$2.ForLoopChildrenChangeEvent, $1.BasicResponse>(
          '/ForLoopService/ChangeChildren',
          ($2.ForLoopChildrenChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeIterations =
      $grpc.ClientMethod<$2.ForLoopIterationsChangeEvent, $1.BasicResponse>(
          '/ForLoopService/ChangeIterations',
          ($2.ForLoopIterationsChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeDuration =
      $grpc.ClientMethod<$2.ForLoopDurationChangeEvent, $1.BasicResponse>(
          '/ForLoopService/ChangeDuration',
          ($2.ForLoopDurationChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeAbsTime =
      $grpc.ClientMethod<$2.ForLoopAbsTimeChangeEvent, $1.BasicResponse>(
          '/ForLoopService/ChangeAbsTime',
          ($2.ForLoopAbsTimeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  ForLoopServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateComponentResponse> create(
      $2.ForLoopCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeChildren(
      $2.ForLoopChildrenChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeChildren, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeIterations(
      $2.ForLoopIterationsChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeIterations, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeDuration(
      $2.ForLoopDurationChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeDuration, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeAbsTime(
      $2.ForLoopAbsTimeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeAbsTime, request, options: options);
  }
}

abstract class ForLoopServiceBase extends $grpc.Service {
  $core.String get $name => 'ForLoopService';

  ForLoopServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.ForLoopCreateEvent, $1.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ForLoopCreateEvent.fromBuffer(value),
            ($1.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ForLoopChildrenChangeEvent, $1.BasicResponse>(
            'ChangeChildren',
            changeChildren_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ForLoopChildrenChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ForLoopIterationsChangeEvent, $1.BasicResponse>(
            'ChangeIterations',
            changeIterations_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ForLoopIterationsChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ForLoopDurationChangeEvent, $1.BasicResponse>(
            'ChangeDuration',
            changeDuration_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ForLoopDurationChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ForLoopAbsTimeChangeEvent, $1.BasicResponse>(
            'ChangeAbsTime',
            changeAbsTime_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ForLoopAbsTimeChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForLoopCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeChildren_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForLoopChildrenChangeEvent> request) async {
    return changeChildren(call, await request);
  }

  $async.Future<$1.BasicResponse> changeIterations_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForLoopIterationsChangeEvent> request) async {
    return changeIterations(call, await request);
  }

  $async.Future<$1.BasicResponse> changeDuration_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForLoopDurationChangeEvent> request) async {
    return changeDuration(call, await request);
  }

  $async.Future<$1.BasicResponse> changeAbsTime_Pre($grpc.ServiceCall call,
      $async.Future<$2.ForLoopAbsTimeChangeEvent> request) async {
    return changeAbsTime(call, await request);
  }

  $async.Future<$1.CreateComponentResponse> create(
      $grpc.ServiceCall call, $2.ForLoopCreateEvent request);
  $async.Future<$1.BasicResponse> changeChildren(
      $grpc.ServiceCall call, $2.ForLoopChildrenChangeEvent request);
  $async.Future<$1.BasicResponse> changeIterations(
      $grpc.ServiceCall call, $2.ForLoopIterationsChangeEvent request);
  $async.Future<$1.BasicResponse> changeDuration(
      $grpc.ServiceCall call, $2.ForLoopDurationChangeEvent request);
  $async.Future<$1.BasicResponse> changeAbsTime(
      $grpc.ServiceCall call, $2.ForLoopAbsTimeChangeEvent request);
}
