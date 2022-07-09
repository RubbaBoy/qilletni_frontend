///
//  Generated code. Do not modify.
//  source: events/board_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'board_events.pb.dart' as $2;
import 'component/component_events.pb.dart' as $1;
export 'board_events.pb.dart';

class BoardServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.BoardCreateEvent, $2.BoardCreateResponse>(
          '/BoardService/Create',
          ($2.BoardCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BoardCreateResponse.fromBuffer(value));
  static final _$changeName =
      $grpc.ClientMethod<$2.BoardNameChangeEvent, $1.BasicResponse>(
          '/BoardService/ChangeName',
          ($2.BoardNameChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$requestBoards =
      $grpc.ClientMethod<$2.BoardsRequestEvent, $2.BoardsRequestResponse>(
          '/BoardService/RequestBoards',
          ($2.BoardsRequestEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BoardsRequestResponse.fromBuffer(value));

  BoardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.BoardCreateResponse> create(
      $2.BoardCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeName(
      $2.BoardNameChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeName, request, options: options);
  }

  $grpc.ResponseFuture<$2.BoardsRequestResponse> requestBoards(
      $2.BoardsRequestEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestBoards, request, options: options);
  }
}

abstract class BoardServiceBase extends $grpc.Service {
  $core.String get $name => 'BoardService';

  BoardServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.BoardCreateEvent, $2.BoardCreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BoardCreateEvent.fromBuffer(value),
        ($2.BoardCreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BoardNameChangeEvent, $1.BasicResponse>(
        'ChangeName',
        changeName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.BoardNameChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.BoardsRequestEvent, $2.BoardsRequestResponse>(
            'RequestBoards',
            requestBoards_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.BoardsRequestEvent.fromBuffer(value),
            ($2.BoardsRequestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.BoardCreateResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.BoardCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeName_Pre($grpc.ServiceCall call,
      $async.Future<$2.BoardNameChangeEvent> request) async {
    return changeName(call, await request);
  }

  $async.Future<$2.BoardsRequestResponse> requestBoards_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.BoardsRequestEvent> request) async {
    return requestBoards(call, await request);
  }

  $async.Future<$2.BoardCreateResponse> create(
      $grpc.ServiceCall call, $2.BoardCreateEvent request);
  $async.Future<$1.BasicResponse> changeName(
      $grpc.ServiceCall call, $2.BoardNameChangeEvent request);
  $async.Future<$2.BoardsRequestResponse> requestBoards(
      $grpc.ServiceCall call, $2.BoardsRequestEvent request);
}
