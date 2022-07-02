import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class LastFmProcessor extends ComponentProcessor<LastFmServiceClient> {
  LastFmProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                LastFmServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, LastFmCreateEvent());

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(componentId, client.changeSequential,
          LastFmSequentialChangeEvent(sequential: sequential));

  Future<ResponseError?> changeLimit(String componentId, [int? limit]) =>
      processModifyEvent(componentId, client.changeLimit,
          LastFmLimitChangeEvent(limit: limit));

  Future<ResponseError?> changeType(
          String componentId, LastFmCollectionType collectionType) =>
      processModifyEvent(componentId, client.changeType,
          LastFmTypeChangeEvent(collectionType: collectionType));
}
