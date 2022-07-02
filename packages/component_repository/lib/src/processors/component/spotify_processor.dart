import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class SpotifyProcessor extends ComponentProcessor<SpotifyServiceClient> {
  SpotifyProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                SpotifyServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, SpotifyCreateEvent());

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(componentId, client.changeSequential,
          SpotifySequentialChangeEvent(sequential: sequential));

  Future<ResponseError?> changeLimit(String componentId, [int? limit]) =>
      processModifyEvent(componentId, client.changeLimit,
          SpotifyLimitChangeEvent(limit: limit));

  Future<ResponseError?> changeType(
          String componentId, SpotifyCollectionType collectionType) =>
      processModifyEvent(componentId, client.changeType,
          SpotifyTypeChangeEvent(collectionType: collectionType));

  Future<ResponseError?> changeData(String componentId, String lookupData) =>
      processModifyEvent(componentId, client.changeData,
          SpotifyDataChangeEvent(lookupData: lookupData));

  Future<ResponseError?> changeYearRange(
          String componentId, int startYear, int endYear) =>
      processModifyEvent(
          componentId,
          client.changeYearRange,
          SpotifyYearRangeChangeEvent(
              yearRange: YearRange(startYear: startYear, endYear: endYear)));

  Future<ResponseError?> changeYear(String componentId, int year) =>
      processModifyEvent(componentId, client.changeYear,
          SpotifyYearChangeEvent(yearRange: year));

  Future<ResponseError?> changeGenre(String componentId, String genre) =>
      processModifyEvent(componentId, client.changeGenre,
          SpotifyGenreChangeEvent(genre: genre));
}
