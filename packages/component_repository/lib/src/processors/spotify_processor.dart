import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class SpotifyProcessor extends ComponentProcessor<SpotifyServiceClient> {
  SpotifyProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                SpotifyServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId, (create) => client.create(SpotifyCreateEvent(create_1: create)));

  Future<ResponseError?> changeSequential(
          String componentId, bool sequential) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeSequential(SpotifySequentialChangeEvent(
              sequential: sequential, modify: modify)));

  Future<ResponseError?> changeLimit(String componentId, [int? limit]) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeLimit(
              SpotifyLimitChangeEvent(limit: limit, modify: modify)));

  Future<ResponseError?> changeType(
          String componentId, SpotifyCollectionType collectionType) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeType(SpotifyTypeChangeEvent(
              collectionType: collectionType, modify: modify)));

  Future<ResponseError?> changeData(String componentId, String lookupData) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeData(
              SpotifyDataChangeEvent(lookupData: lookupData, modify: modify)));

  Future<ResponseError?> changeYearRange(
          String componentId, int startYear, int endYear) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeYearRange(SpotifyYearRangeChangeEvent(
              yearRange: YearRange(startYear: startYear, endYear: endYear),
              modify: modify)));

  Future<ResponseError?> changeYear(String componentId, int year) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeYear(
              SpotifyYearChangeEvent(yearRange: year, modify: modify)));

  Future<ResponseError?> changeGenre(String componentId, String genre) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeGenre(
              SpotifyGenreChangeEvent(genre: genre, modify: modify)));
}
