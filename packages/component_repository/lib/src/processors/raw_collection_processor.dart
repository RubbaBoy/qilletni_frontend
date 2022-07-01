import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class RawCollectionProcessor
    extends ComponentProcessor<RawCollectionServiceClient> {
  RawCollectionProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                RawCollectionServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId,
      (create) => client.create(RawCollectionCreateEvent(create_1: create)));

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeSequential(
              RawCollectionSequentialChangeEvent(
                  sequential: sequential, modify: modify)));

  Future<ResponseError?> changeSongs(
          String componentId, List<String> songIds) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeSongs(
              RawCollectionSongsChangeEvent(songIds: songIds, modify: modify)));
}
