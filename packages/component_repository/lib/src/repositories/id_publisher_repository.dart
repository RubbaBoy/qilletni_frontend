import 'dart:async';

import 'package:component_grpc/component_grpc.dart';

/// [T] is the creation response
class IdPublisherRepository<T> {
  final streams = <String, StreamController>{};
  final createStream = StreamController<T>();

  /// Returns a stream of gRPC events. Things like [ForLoopChildrenChangeEvent],
  /// [FunctionNameChangeEvent], etc. for the given component ID. Events are
  /// fired after they have been successfully received by the server,
  /// indicating a state change.
  Stream<dynamic> listenToComponent(String id) {
    return streams
        .putIfAbsent(id, () => StreamController.broadcast())
        .stream;
  }

  Stream<T> listenToCreate() {
    return createStream.stream;
  }

  void publishEvent(String id, dynamic event) {
    streams[id]?.sink.add(event);
  }

  void publishCreate(T createResponse) {
    createStream.sink.add(createResponse);
  }
}
