///
//  Generated code. Do not modify.
//  source: events/component/component_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'component_events.pb.dart' as $1;
export 'component_events.pb.dart';

class SimpleClient extends $grpc.Client {
  static final _$sayHello = $grpc.ClientMethod<$1.HelloRequest, $1.HelloReply>(
      '/Simple/SayHello',
      ($1.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.HelloReply.fromBuffer(value));

  SimpleClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.HelloReply> sayHello($1.HelloRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }
}

abstract class SimpleServiceBase extends $grpc.Service {
  $core.String get $name => 'Simple';

  SimpleServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.HelloRequest, $1.HelloReply>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.HelloRequest.fromBuffer(value),
        ($1.HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.HelloReply> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future<$1.HelloRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Future<$1.HelloReply> sayHello(
      $grpc.ServiceCall call, $1.HelloRequest request);
}
