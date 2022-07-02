import 'package:component_grpc/component_grpc.dart';

/// Allows for the requesting of all components
class StructureRepository {
  StructureRepository(this.grpcRepository)
      : client = grpcRepository.createClient((channel, options) =>
            ComponentRequestServiceClient(channel, options: options));

  final GrpcRepository grpcRepository;
  final ComponentRequestServiceClient client;

  Future<List<ComponentResponse>> requestStructure(String boardId) {
    return client
        .requestStructure(StructureRequestEvent(boardId: boardId))
        .then((response) {
      if (response.hasError()) {
        throw response.error;
      }

      return response.components;
    });
  }
}
