import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class SongProcessor extends ComponentProcessor<SongServiceClient> {
  SongProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                SongServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId, (create) => client.create(SongCreateEvent(create_1: create)));

  Future<ResponseError?> changeSequential(String componentId, String songId) =>
      processModifyEvent(
          componentId,
          (modify) => client
              .changeSong(SongChangeEvent(songId: songId, modify: modify)));
}
