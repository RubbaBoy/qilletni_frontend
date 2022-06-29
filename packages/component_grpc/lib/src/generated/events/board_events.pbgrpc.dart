///
//  Generated code. Do not modify.
//  source: events/board_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'board_events.pb.dart' as $1;
import 'component/component_events.pb.dart' as $0;
export 'board_events.pb.dart';

class BoardServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.BoardCreateEvent, $1.BoardCreateResponse>(
          '/BoardService/Create',
          ($1.BoardCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BoardCreateResponse.fromBuffer(value));
  static final _$changeName =
      $grpc.ClientMethod<$1.BoardNameChangeEvent, $0.EmptyResponse>(
          '/BoardService/ChangeName',
          ($1.BoardNameChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  BoardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.BoardCreateResponse> create(
      $1.BoardCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeName(
      $1.BoardNameChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeName, request, options: options);
  }
}

abstract class BoardServiceBase extends $grpc.Service {
  $core.String get $name => 'BoardService';

  BoardServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.BoardCreateEvent, $1.BoardCreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.BoardCreateEvent.fromBuffer(value),
        ($1.BoardCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BoardNameChangeEvent, $0.EmptyResponse>(
        'ChangeName',
        changeName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.BoardNameChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.BoardCreateResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.BoardCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeName_Pre($grpc.ServiceCall call,
      $async.Future<$1.BoardNameChangeEvent> request) async {
    return changeName(call, await request);
  }

  $async.Future<$1.BoardCreateResponse> create(
      $grpc.ServiceCall call, $1.BoardCreateEvent request);
  $async.Future<$0.EmptyResponse> changeName(
      $grpc.ServiceCall call, $1.BoardNameChangeEvent request);
}
