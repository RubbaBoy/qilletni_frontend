import 'dart:async';

import 'package:component_grpc/component_grpc.dart';

extension TransitionUtility on Future<ResponseError?> {
  Future<void> onFailed(FutureOr<void> Function(ResponseError?) handleFailed) {
    return this.then((error) {
      if (error != null) {
        return handleFailed(error);
      }

      return null;
    }).onError((error, stackTrace) {
      print('Failed transition');
      print(error);

      return handleFailed(null);
    });
  }
}