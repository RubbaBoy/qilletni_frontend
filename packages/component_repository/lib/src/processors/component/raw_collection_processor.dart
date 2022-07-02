import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class RawCollectionProcessor
    extends ComponentProcessor<RawCollectionServiceClient> {
  RawCollectionProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                RawCollectionServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, RawCollectionCreateEvent());

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(componentId, client.changeSequential,
          RawCollectionSequentialChangeEvent(sequential: sequential));

  Future<ResponseError?> changeSongs(
          String componentId, List<String> songIds) =>
      processModifyEvent(componentId, client.changeSongs,
          RawCollectionSongsChangeEvent(songIds: songIds));
}
