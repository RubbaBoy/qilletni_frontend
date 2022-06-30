import 'package:component_grpc/component_grpc.dart';
import 'package:grpc/grpc.dart';

typedef String AuthSupplier();

class GrpcRepository {
  GrpcRepository(
      {required ClientChannel channel, required AuthSupplier authSupplier})
      : _channel = channel,
        _authSupplier = authSupplier;

  final ClientChannel _channel;
  final AuthSupplier _authSupplier;

  T createClient<T extends Client>(
      T Function(ClientChannel channel, CallOptions callOptions)
          clientCreator) {
    return clientCreator(
        _channel, CallOptions(metadata: {'Authorization': _authSupplier()}));
  }
}
