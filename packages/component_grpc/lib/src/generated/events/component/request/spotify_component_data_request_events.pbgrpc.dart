///
//  Generated code. Do not modify.
//  source: events/component/request/spotify_component_data_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spotify_component_data_request_events.pb.dart' as $1;
export 'spotify_component_data_request_events.pb.dart';

class SpotifyComponentDataRequestServiceClient extends $grpc.Client {
  static final _$requestSpotifyComponentData = $grpc.ClientMethod<
          $1.SpotifyComponentDataRequestEvent, $1.SpotifyComponentDataResponse>(
      '/SpotifyComponentDataRequestService/RequestSpotifyComponentData',
      ($1.SpotifyComponentDataRequestEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SpotifyComponentDataResponse.fromBuffer(value));

  SpotifyComponentDataRequestServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.SpotifyComponentDataResponse>
      requestSpotifyComponentData($1.SpotifyComponentDataRequestEvent request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestSpotifyComponentData, request,
        options: options);
  }
}

abstract class SpotifyComponentDataRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'SpotifyComponentDataRequestService';

  SpotifyComponentDataRequestServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SpotifyComponentDataRequestEvent,
            $1.SpotifyComponentDataResponse>(
        'RequestSpotifyComponentData',
        requestSpotifyComponentData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SpotifyComponentDataRequestEvent.fromBuffer(value),
        ($1.SpotifyComponentDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.SpotifyComponentDataResponse>
      requestSpotifyComponentData_Pre($grpc.ServiceCall call,
          $async.Future<$1.SpotifyComponentDataRequestEvent> request) async {
    return requestSpotifyComponentData(call, await request);
  }

  $async.Future<$1.SpotifyComponentDataResponse> requestSpotifyComponentData(
      $grpc.ServiceCall call, $1.SpotifyComponentDataRequestEvent request);
}
