import 'dart:async';

import 'package:authentication_repository/src/authorizer/session_uri.dart' as session_uri;
import 'package:url_launcher/url_launcher.dart';

import 'authorizer.dart';

class DesktopAuthorizer extends Authorizer {

  @override
  Future<String?> authorizerUser(Uri authorizationUri) {
    return launchUrl(authorizationUri)
        .then((value) {
      if (!value) {
        return null;
      }

      return session_uri.waitForSessionId();
    });
  }

}
