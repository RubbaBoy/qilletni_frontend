///
//  Generated code. Do not modify.
//  source: events/component/request/spotify_component_data_request_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'spotify_component_data_request_events.pb.dart' as $0;
export 'spotify_component_data_request_events.pb.dart';

class SpotifyComponentDataRequestServiceClient extends $grpc.Client {
  static final _$requestSpotifyComponentData = $grpc.ClientMethod<
          $0.SpotifyComponentDataRequestEvent, $0.SpotifyComponentDataResponse>(
      '/SpotifyComponentDataRequestService/RequestSpotifyComponentData',
      ($0.SpotifyComponentDataRequestEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SpotifyComponentDataResponse.fromBuffer(value));

  SpotifyComponentDataRequestServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SpotifyComponentDataResponse>
      requestSpotifyComponentData($0.SpotifyComponentDataRequestEvent request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestSpotifyComponentData, request,
        options: options);
  }
}

abstract class SpotifyComponentDataRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'SpotifyComponentDataRequestService';

  SpotifyComponentDataRequestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SpotifyComponentDataRequestEvent,
            $0.SpotifyComponentDataResponse>(
        'RequestSpotifyComponentData',
        requestSpotifyComponentData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SpotifyComponentDataRequestEvent.fromBuffer(value),
        ($0.SpotifyComponentDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SpotifyComponentDataResponse>
      requestSpotifyComponentData_Pre($grpc.ServiceCall call,
          $async.Future<$0.SpotifyComponentDataRequestEvent> request) async {
    return requestSpotifyComponentData(call, await request);
  }

  $async.Future<$0.SpotifyComponentDataResponse> requestSpotifyComponentData(
      $grpc.ServiceCall call, $0.SpotifyComponentDataRequestEvent request);
}
