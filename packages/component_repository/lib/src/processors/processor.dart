import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';

abstract class Processor<T extends Client> {
  Processor(this.grpcRepository,
      {required ClientCreator<T> clientCreator})
      : _clientCreator = clientCreator;

  final GrpcRepository grpcRepository;
  final ClientCreator<T> _clientCreator;

  T? _client;

  T get client {
    if (_client != null) return _client!;
    return _client = grpcRepository.createClient(_clientCreator);
  }

  /// Either returns a [ModifyEvent], [BoardModifyEvent], or another necessary
  /// implementation.
  @protected
  GeneratedMessage createModify(String id);

  @protected
  void postChange(String id, ComponentResponse event);

  /// [requestMethod] should be something like [client.changeName], and
  /// [changeEvent] should be an instance of something like [SongChangeEvent],
  /// without the [modify] field set.
  Future<ResponseError?> processModifyEvent<T extends GeneratedMessage>(
      String componentId, ModifyRequest<T> requestMethod, T changeEvent) {
    var tagNumber = changeEvent.getTagNumber('modify');
    assert(tagNumber != null, "No 'modify' field for event found!");
    changeEvent.setField(tagNumber!, createModify(componentId));

    return processEvent<T>(componentId, requestMethod, changeEvent);
  }

  Future<ResponseError?> processEvent<T extends GeneratedMessage>(
      String id, ModifyRequest<T> requestMethod, T changeEvent) {
    return requestMethod(changeEvent).then((response) {
      if (response.hasError()) {
        ResponseError error = response.error;
        print(
            'Error processing event (Status: ${error.code}): ${error.message}');
        return error;
      }

      postChange(id, response.component);
      return null;
    });
  }
}