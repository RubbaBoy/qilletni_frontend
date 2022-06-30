import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/app.dart';
import 'package:uni_links_desktop/uni_links_desktop.dart';

Future<void> main() async {
  if (Platform.isMacOS || Platform.isWindows) {
    enableUniLinksDesktop();
    if (Platform.isWindows) {
      registerProtocol('qilletni');
    }
  }

  var sessionStore = await HiveSessionStore.create();

  runApp(App(authenticationRepository: AuthenticationRepository(sessionStore)));
}
