import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class LastFmProcessor extends ComponentProcessor<LastFmServiceClient> {
  LastFmProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                LastFmServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId, (create) => client.create(LastFmCreateEvent(create_1: create)));

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeSequential(LastFmSequentialChangeEvent(
              sequential: sequential, modify: modify)));

  Future<ResponseError?> changeLimit(String componentId, [int? limit]) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeLimit(
              LastFmLimitChangeEvent(limit: limit, modify: modify)));

  Future<ResponseError?> changeType(
          String componentId, LastFmCollectionType collectionType) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeType(LastFmTypeChangeEvent(
              collectionType: collectionType, modify: modify)));
}
