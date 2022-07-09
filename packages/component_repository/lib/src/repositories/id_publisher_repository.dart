import 'dart:async';

import 'package:component_grpc/component_grpc.dart';

/// [T] is the creation response
class IdPublisherRepository<T> {
  final streams = <String, StreamController<ComponentResponse>>{};
  final createStream = StreamController<T>();

  /// Returns a stream of gRPC objects, such as a [ComponentResponse] or
  /// [Board]. for the given component ID. Objects are the post-modification
  /// state of them, indicating the server has successfully made a change and
  /// the client should reflect changes.
  Stream<ComponentResponse> componentStream(String id) {
    return streams
        .putIfAbsent(id, () => StreamController.broadcast())
        .stream;
  }

  Stream<T> listenToCreate() {
    return createStream.stream;
  }

  void publishChange(String id, ComponentResponse changedObject) {
    streams[id]?.sink.add(changedObject);
  }

  void publishCreate(T createResponse) {
    createStream.sink.add(createResponse);
  }
}
