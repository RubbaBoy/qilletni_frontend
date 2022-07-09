///
//  Generated code. Do not modify.
//  source: events/component/raw_collection_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'raw_collection_events.pb.dart' as $2;
import 'component_events.pb.dart' as $1;
export 'raw_collection_events.pb.dart';

class RawCollectionServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$2.RawCollectionCreateEvent,
          $1.CreateComponentResponse>(
      '/RawCollectionService/Create',
      ($2.RawCollectionCreateEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CreateComponentResponse.fromBuffer(value));
  static final _$changeSequential = $grpc.ClientMethod<
          $2.RawCollectionSequentialChangeEvent, $1.BasicResponse>(
      '/RawCollectionService/ChangeSequential',
      ($2.RawCollectionSequentialChangeEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));
  static final _$changeSongs =
      $grpc.ClientMethod<$2.RawCollectionSongsChangeEvent, $1.BasicResponse>(
          '/RawCollectionService/ChangeSongs',
          ($2.RawCollectionSongsChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.BasicResponse.fromBuffer(value));

  RawCollectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateComponentResponse> create(
      $2.RawCollectionCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeSequential(
      $2.RawCollectionSequentialChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSequential, request, options: options);
  }

  $grpc.ResponseFuture<$1.BasicResponse> changeSongs(
      $2.RawCollectionSongsChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSongs, request, options: options);
  }
}

abstract class RawCollectionServiceBase extends $grpc.Service {
  $core.String get $name => 'RawCollectionService';

  RawCollectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.RawCollectionCreateEvent,
            $1.CreateComponentResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RawCollectionCreateEvent.fromBuffer(value),
        ($1.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RawCollectionSequentialChangeEvent,
            $1.BasicResponse>(
        'ChangeSequential',
        changeSequential_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RawCollectionSequentialChangeEvent.fromBuffer(value),
        ($1.BasicResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.RawCollectionSongsChangeEvent, $1.BasicResponse>(
            'ChangeSongs',
            changeSongs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.RawCollectionSongsChangeEvent.fromBuffer(value),
            ($1.BasicResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateComponentResponse> create_Pre($grpc.ServiceCall call,
      $async.Future<$2.RawCollectionCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$1.BasicResponse> changeSequential_Pre($grpc.ServiceCall call,
      $async.Future<$2.RawCollectionSequentialChangeEvent> request) async {
    return changeSequential(call, await request);
  }

  $async.Future<$1.BasicResponse> changeSongs_Pre($grpc.ServiceCall call,
      $async.Future<$2.RawCollectionSongsChangeEvent> request) async {
    return changeSongs(call, await request);
  }

  $async.Future<$1.CreateComponentResponse> create(
      $grpc.ServiceCall call, $2.RawCollectionCreateEvent request);
  $async.Future<$1.BasicResponse> changeSequential(
      $grpc.ServiceCall call, $2.RawCollectionSequentialChangeEvent request);
  $async.Future<$1.BasicResponse> changeSongs(
      $grpc.ServiceCall call, $2.RawCollectionSongsChangeEvent request);
}
