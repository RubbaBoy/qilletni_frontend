///
//  Generated code. Do not modify.
//  source: events/component/raw_collection_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'raw_collection_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'raw_collection_events.pb.dart';

class RawCollectionServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$1.RawCollectionCreateEvent,
          $0.CreateComponentResponse>(
      '/RawCollectionService/Create',
      ($1.RawCollectionCreateEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential = $grpc.ClientMethod<
          $1.RawCollectionSequentialChangeEvent, $0.EmptyResponse>(
      '/RawCollectionService/ChangeSequential',
      ($1.RawCollectionSequentialChangeEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));
  static final _$changeSongs =
      $grpc.ClientMethod<$1.RawCollectionSongsChangeEvent, $0.EmptyResponse>(
          '/RawCollectionService/ChangeSongs',
          ($1.RawCollectionSongsChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  RawCollectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.RawCollectionCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeSequential(
      $1.RawCollectionSequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeSongs(
      $1.RawCollectionSongsChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSongs, request, options: options);
  }
}

abstract class RawCollectionServiceBase extends $grpc.Service {
  $core.String get $name => 'RawCollectionService';

  RawCollectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RawCollectionCreateEvent,
            $0.CreateComponentResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RawCollectionCreateEvent.fromBuffer(value),
        ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RawCollectionSequentialChangeEvent,
            $0.EmptyResponse>(
        'ChangeSequential',
        changeSequential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RawCollectionSequentialChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.RawCollectionSongsChangeEvent, $0.EmptyResponse>(
            'ChangeSongs',
            changeSongs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.RawCollectionSongsChangeEvent.fromBuffer(value),
            ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$1.RawCollectionCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$1.RawCollectionSequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeSongs_Pre($grpc.ServiceCall call,
      $async.Future<$1.RawCollectionSongsChangeEvent> request) async {
    return changeSongs(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.RawCollectionCreateEvent request);
  $async.Future<$0.EmptyResponse> changeSequential(
      $grpc.ServiceCall call, $1.RawCollectionSequentialChangeEvent request);
  $async.Future<$0.EmptyResponse> changeSongs(
      $grpc.ServiceCall call, $1.RawCollectionSongsChangeEvent request);
}
