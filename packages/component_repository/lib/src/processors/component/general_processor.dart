import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/processors.dart';

class GeneralProcessor extends ComponentProcessor<GeneralServiceClient> {
  GeneralProcessor(super.componentRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                GeneralServiceClient(channel, options: callOptions));

  Future<ResponseError?> delete(String componentId) => processEvent(
      componentId, client.delete, DeleteEvent(componentId: componentId));

  Future<ResponseError?> recolor(String componentId, int color) =>
      processModifyEvent(
          componentId, client.recolor, RecolorEvent(color: color));
}
