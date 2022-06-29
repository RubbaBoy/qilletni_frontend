import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/app.dart';
import 'package:uni_links_desktop/uni_links_desktop.dart';

void main() {
  if (Platform.isMacOS || Platform.isWindows) {
    enableUniLinksDesktop();
    if (Platform.isWindows) {
      registerProtocol('qilletni');
    }
  }

  runApp(App(authenticationRepository: AuthenticationRepository()));
}
