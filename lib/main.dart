import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/app.dart';
import 'package:uni_links_desktop/uni_links_desktop.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  if (Platform.isMacOS || Platform.isWindows) {
    enableUniLinksDesktop();
    if (Platform.isWindows) {
      registerProtocol('qilletni');
    }
  }

  final sessionStore = await HiveSessionStore.create();

  final authRepository = AuthenticationRepository(sessionStore);

  final channel = ClientChannel(
    const String.fromEnvironment('GRPC_HOST', defaultValue: 'localhost'),
    port: const int.fromEnvironment('GRPC_PORT', defaultValue: 9090),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final grpcRepository = GrpcRepository(
      channel: channel, authSupplier: () => authRepository.getSessionId());

  runApp(App(
    authenticationRepository: authRepository,
    grpcRepository: grpcRepository,
  ));
}
