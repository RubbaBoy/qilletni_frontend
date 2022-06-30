import 'dart:async';

import 'package:authentication_repository/src/authorizer/session_uri.dart' as session_uri;
import 'package:url_launcher/url_launcher.dart';

import 'authorizer.dart';

class AndroidAuthorizer extends Authorizer {

  @override
  Future<String?> authorizeUser(Uri authorizationUri) async {
    return launchUrl(authorizationUri, mode: LaunchMode.externalApplication)
            .then((value) {
          if (!value) {
            return null;
          }

          return session_uri.waitForSessionId();
        });
  }
}
