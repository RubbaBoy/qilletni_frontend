import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class SongProcessor extends ComponentProcessor<SongServiceClient> {
  SongProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                SongServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, SongCreateEvent());

  Future<ResponseError?> changeSequential(String componentId, String songId) =>
      processModifyEvent(
          componentId, client.changeSong, SongChangeEvent(songId: songId));
}
