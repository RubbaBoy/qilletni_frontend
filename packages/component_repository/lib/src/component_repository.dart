// import 'dart:async';
//
// import 'package:component_grpc/component_grpc.dart';
//
// class ComponentRepository {
//   ComponentRepository({required GrpcRepository repository})
//       : _repository = repository;
//
//   final streams = <String, StreamController>{};
//   final createStream = StreamController<CreateComponentResponse>();
//   final GrpcRepository _repository;
//
//   /// Returns a stream of gRPC events. Things like [ForLoopChildrenChangeEvent],
//   /// [FunctionNameChangeEvent], etc. for the given component ID. Events are
//   /// fired after they have been successfully received by the server,
//   /// indicating a state change.
//   Stream<dynamic> listenToComponent(String componentId) {
//     return streams
//         .putIfAbsent(componentId, () => StreamController.broadcast())
//         .stream;
//   }
//
//   Stream<CreateComponentResponse> listenToCreate() {
//     return createStream.stream;
//   }
//
//   void publishEvent(String componentId, dynamic event) {
//     streams[componentId]?.sink.add(event);
//   }
//
//   void publishCreate(CreateComponentResponse createComponentResponse) {
//     createStream.sink.add(createComponentResponse);
//   }
//
//   void bruh() {
//     final componentId = '';
//     final client = _repository.createClient((channel, callOptions) =>
//         ForLoopServiceClient(channel, options: callOptions));
//
//     client.changeAbsTime(ForLoopAbsTimeChangeEvent(
//         absTime: DateTime.now().millisecondsSinceEpoch,
//         modify: ModifyEvent(componentId: componentId)));
//   }
// }
