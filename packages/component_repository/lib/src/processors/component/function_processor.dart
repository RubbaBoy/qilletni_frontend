import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class FunctionProcessor extends ComponentProcessor<FunctionServiceClient> {
  FunctionProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                FunctionServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) =>
      processCreateEvent(boardId, client.create, FunctionCreateEvent());

  Future<ResponseError?> changeChildren(
          String componentId, List<String> children) =>
      processModifyEvent(componentId, client.changeChildren,
          FunctionChangeChildrenEvent(children: children));

  Future<ResponseError?> changeName(String componentId, String name) =>
      processModifyEvent(
          componentId, client.changeName, FunctionNameChangeEvent(name: name));
}
