import 'package:component_grpc/component_grpc.dart';
import 'package:grpc/grpc.dart';

typedef ResponseFuture<EmptyResponse> ModifyRequestBuilder(ModifyEvent modify);
typedef ResponseFuture<CreateComponentResponse> CreateRequestBuilder(
    CreateEvent create);

abstract class ComponentProcessor<T extends Client> {
  ComponentProcessor(this.grpcRepository,
      {required ClientCreator<T> clientCreator})
      : _clientCreator = clientCreator;

  final GrpcRepository grpcRepository;
  final ClientCreator<T> _clientCreator;

  T? _client;

  T get client {
    if (_client != null) return _client!;
    return _client = grpcRepository.createClient(_clientCreator);
  }

  ModifyEvent _createModify(String componentId) =>
      ModifyEvent(componentId: componentId);

  CreateEvent _createCreate(String boardId) => CreateEvent(boardId: boardId);

  /// The [requestBuilder] type should be either a future of [EmptyResponse],
  /// or anything with the following in its proto:
  /// ```proto
  /// optional ResponseError error = ...;
  /// ```
  Future<ResponseError?> processModifyEvent<T>(
      String componentId, ModifyRequestBuilder requestBuilder) {
    return processEvent(
        componentId, requestBuilder(_createModify(componentId)));
  }

  Future<ResponseError?> processEvent<T>(
      String componentId, ResponseFuture<EmptyResponse> responseFuture) {
    return responseFuture.then((response) {
      if (response.hasError()) {
        ResponseError error = response.error;
        print(
            'Error processing event (Status: ${error.code}): ${error.message}');
        return error;
      }

      return null;
    });
  }

  Future<CreateComponentResponse> processCreateEvent(
      String boardId, CreateRequestBuilder requestBuilder) {
    return requestBuilder(_createCreate(boardId)).then((response) {
      if (response.hasError()) {
        ResponseError error = response.error;
        print(
            'Error processing create event (Status: ${error.code}): ${error.message}');
      }

      return response;
    });
  }
}
