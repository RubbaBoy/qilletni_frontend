import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class ForLoopProcessor extends ComponentProcessor<ForLoopServiceClient> {
  ForLoopProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                ForLoopServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, ForLoopCreateEvent());

  Future<ResponseError?> changeChildren(
          String componentId, List<String> children) =>
      processModifyEvent(componentId, client.changeChildren,
          ForLoopChildrenChangeEvent(children: children));

  Future<ResponseError?> changeIterations(String componentId,
          [int? iterations]) =>
      processModifyEvent(componentId, client.changeIterations,
          ForLoopIterationsChangeEvent(iterations: iterations));

  Future<ResponseError?> changeDuration(String componentId, [int? duration]) =>
      processModifyEvent(componentId, client.changeDuration,
          ForLoopDurationChangeEvent(duration: duration));

  Future<ResponseError?> changeAbsTime(String componentId, [int? absTime]) =>
      processModifyEvent(componentId, client.changeAbsTime,
          ForLoopAbsTimeChangeEvent(absTime: absTime));
}
