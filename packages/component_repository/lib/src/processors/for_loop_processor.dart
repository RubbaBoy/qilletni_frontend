import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class ForLoopProcessor extends ComponentProcessor<ForLoopServiceClient> {
  ForLoopProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                ForLoopServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId, (create) => client.create(ForLoopCreateEvent(create_1: create)));

  Future<ResponseError?> changeChildren(
          String componentId, List<String> children) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeChildren(
              ForLoopChildrenChangeEvent(children: children, modify: modify)));

  Future<ResponseError?> changeIterations(String componentId,
          [int? iterations]) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeIterations(ForLoopIterationsChangeEvent(
              iterations: iterations, modify: modify)));

  Future<ResponseError?> changeDuration(String componentId, [int? duration]) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeDuration(
              ForLoopDurationChangeEvent(duration: duration, modify: modify)));

  Future<ResponseError?> changeAbsTime(String componentId, [int? absTime]) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeAbsTime(
              ForLoopAbsTimeChangeEvent(absTime: absTime, modify: modify)));
}
