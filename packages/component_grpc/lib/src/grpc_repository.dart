import 'package:component_grpc/component_grpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

typedef String AuthSupplier();

typedef T ClientCreator<T>(ClientChannel channel, CallOptions callOptions);

class GrpcRepository {
  GrpcRepository(
      {required ClientChannel channel, required AuthSupplier authSupplier})
      : _channel = channel,
        _authSupplier = authSupplier;

  final ClientChannel _channel;
  final AuthSupplier _authSupplier;

  T createClient<T extends Client>(ClientCreator<T> clientCreator) {
    return clientCreator(
        _channel, CallOptions(metadata: {'Authorization': _authSupplier()}));
  }
}
