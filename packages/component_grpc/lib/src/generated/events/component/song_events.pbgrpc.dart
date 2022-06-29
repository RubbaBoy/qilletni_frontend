///
//  Generated code. Do not modify.
//  source: events/component/song_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'song_events.pb.dart' as $1;
import 'component_events.pb.dart' as $0;
export 'song_events.pb.dart';

class SongServiceClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.SongCreateEvent, $0.CreateComponentResponse>(
          '/SongService/Create',
          ($1.SongCreateEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateComponentResponse.fromBuffer(value));
  static final _$changeSong =
      $grpc.ClientMethod<$1.SongChangeEvent, $0.EmptyResponse>(
          '/SongService/ChangeSong',
          ($1.SongChangeEvent value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateComponentResponse> create(
      $1.SongCreateEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> changeSong($1.SongChangeEvent request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeSong, request, options: options);
  }
}

abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'SongService';

  SongServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.SongCreateEvent, $0.CreateComponentResponse>(
            'Create',
            create_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SongCreateEvent.fromBuffer(value),
            ($0.CreateComponentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SongChangeEvent, $0.EmptyResponse>(
        'ChangeSong',
        changeSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SongChangeEvent.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateComponentResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SongCreateEvent> request) async {
    return create(call, await request);
  }

  $async.Future<$0.EmptyResponse> changeSong_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SongChangeEvent> request) async {
    return changeSong(call, await request);
  }

  $async.Future<$0.CreateComponentResponse> create(
      $grpc.ServiceCall call, $1.SongCreateEvent request);
  $async.Future<$0.EmptyResponse> changeSong(
      $grpc.ServiceCall call, $1.SongChangeEvent request);
}
