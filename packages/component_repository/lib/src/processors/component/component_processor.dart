import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';

typedef ResponseFuture<BasicResponse> ModifyRequestBuilder(ModifyEvent modify);
typedef ResponseFuture<CreateComponentResponse> CreateRequestBuilder(
    CreateEvent create);

typedef ResponseFuture<BasicResponse> ModifyRequest<T extends GeneratedMessage>(
    T event,
    {CallOptions? options});

typedef ResponseFuture<CreateComponentResponse> CreateRequest<
    T extends GeneratedMessage>(T event, {CallOptions? options});

abstract class ComponentProcessor<T extends Client> extends Processor<T> {
  ComponentProcessor(this.componentRepository, super.grpcRepository, {required super.clientCreator});

  final ComponentRepository componentRepository;

  @override
  ModifyEvent createModify(String componentId) =>
      ModifyEvent(componentId: componentId);

  CreateEvent _createCreate(String boardId) => CreateEvent(boardId: boardId);

  @override
  void postChange(String componentId, ComponentResponse component) {
    componentRepository.publishChange(componentId, component);
  }

  /// The [requestBuilder] type should be either a future of [EmptyResponse],
  /// or anything with the following in its proto:
  /// ```proto
  /// optional ResponseError error = ...;
  /// ```
  // Future<ResponseError?> processModifyEvent<T>(
  //     String componentId, ModifyRequestBuilder requestBuilder) {
  //   return processEvent(
  //       componentId, requestBuilder(_createModify(componentId)));
  // }

  Future<CreateComponentResponse>
      processCreateEvent<T extends GeneratedMessage>(
          String boardId, CreateRequest<T> requestMethod, T createEvent) {
    var tagNumber = createEvent.getTagNumber('create');
    assert(tagNumber != null, "No 'create' field for event found!");
    createEvent.setField(tagNumber!, _createCreate(boardId));

    return requestMethod(createEvent).then((response) {
      if (response.hasError()) {
        ResponseError error = response.error;
        print(
            'Error processing create event (Status: ${error.code}): ${error.message}');
      }

      componentRepository.publishCreate(response);
      return response;
    });
  }
}
