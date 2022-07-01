import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class FunctionProcessor extends ComponentProcessor<FunctionServiceClient> {
  FunctionProcessor(super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                FunctionServiceClient(channel, options: callOptions));

  Future<CreateComponentResponse> create(String boardId) => processCreateEvent(
      boardId,
      (create) => client.create(FunctionCreateEvent(create_1: create)));

  Future<ResponseError?> changeChildren(
          String componentId, List<String> children) =>
      processModifyEvent(
          componentId,
          (modify) => client.changeChildren(
              FunctionChangeChildrenEvent(children: children, modify: modify)));

  Future<ResponseError?> changeName(String componentId, String name) =>
      processModifyEvent(
          componentId,
          (modify) => client
              .changeName(FunctionNameChangeEvent(name: name, modify: modify)));
}
