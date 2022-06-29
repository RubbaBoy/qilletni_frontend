///
//  Generated code. Do not modify.
//  source: events/component/for_loop_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'for_loop_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'for_loop_events.pb.dart';

class ForLoopServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.ForLoopCreateEvent, $0.CreateComponentResponse>(
          '/ForLoopService/Create',
          ($1.ForLoopCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeChildren =
      $grpc.ClientMethod<$1.ForLoopChildrenChangeEvent, $0.EmptyResponse>(
          '/ForLoopService/ChangeChildren',
          ($1.ForLoopChildrenChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeIterations =
      $grpc.ClientMethod<$1.ForLoopIterationsChangeEvent, $0.EmptyResponse>(
          '/ForLoopService/ChangeIterations',
          ($1.ForLoopIterationsChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeDuration =
      $grpc.ClientMethod<$1.ForLoopDurationChangeEvent, $0.EmptyResponse>(
          '/ForLoopService/ChangeDuration',
          ($1.ForLoopDurationChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeAbsTime =
      $grpc.ClientMethod<$1.ForLoopAbsTimeChangeEvent, $0.EmptyResponse>(
          '/ForLoopService/ChangeAbsTime',
          ($1.ForLoopAbsTimeChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  ForLoopServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.ForLoopCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeChildren(
      $1.ForLoopChildrenChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeChildren, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeIterations(
      $1.ForLoopIterationsChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeIterations, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeDuration(
      $1.ForLoopDurationChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeDuration, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeAbsTime(
      $1.ForLoopAbsTimeChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeAbsTime, request, options: options);
  }
}

abstract class ForLoopServiceBase extends $grpc.Service {
  $core.String get $name => 'ForLoopService';

  ForLoopServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.ForLoopCreateEvent, $0.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ForLoopCreateEvent.fromBuffer(value),
            ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ForLoopChildrenChangeEvent, $0.EmptyResponse>(
            'ChangeChildren',
            changeChildren_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ForLoopChildrenChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ForLoopIterationsChangeEvent, $0.EmptyResponse>(
            'ChangeIterations',
            changeIterations_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ForLoopIterationsChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ForLoopDurationChangeEvent, $0.EmptyResponse>(
            'ChangeDuration',
            changeDuration_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ForLoopDurationChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ForLoopAbsTimeChangeEvent, $0.EmptyResponse>(
            'ChangeAbsTime',
            changeAbsTime_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ForLoopAbsTimeChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.ForLoopCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeChildren_Pre($grpc.ServiceCall call,
      $async.Future<$1.ForLoopChildrenChangeEvent> request) async {
    return changeChildren(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeIterations_Pre($grpc.ServiceCall call,
      $async.Future<$1.ForLoopIterationsChangeEvent> request) async {
    return changeIterations(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeDuration_Pre($grpc.ServiceCall call,
      $async.Future<$1.ForLoopDurationChangeEvent> request) async {
    return changeDuration(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeAbsTime_Pre($grpc.ServiceCall call,
      $async.Future<$1.ForLoopAbsTimeChangeEvent> request) async {
    return changeAbsTime(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.ForLoopCreateEvent request);
  $async.Future<$0.EmptyResponse> changeChildren(
      $grpc.ServiceCall call, $1.ForLoopChildrenChangeEvent request);
  $async.Future<$0.EmptyResponse> changeIterations(
      $grpc.ServiceCall call, $1.ForLoopIterationsChangeEvent request);
  $async.Future<$0.EmptyResponse> changeDuration(
      $grpc.ServiceCall call, $1.ForLoopDurationChangeEvent request);
  $async.Future<$0.EmptyResponse> changeAbsTime(
      $grpc.ServiceCall call, $1.ForLoopAbsTimeChangeEvent request);
}
