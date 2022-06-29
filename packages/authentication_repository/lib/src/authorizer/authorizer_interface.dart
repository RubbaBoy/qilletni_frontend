import 'dart:io';

import 'authorizer.dart';

abstract class Authorizer {
    factory Authorizer.create() {
        if (Platform.isWindows || Platform.isMacOS) {
            return DesktopAuthorizer();
        }

        if (Platform.isAndroid) {
            return AndroidAuthorizer();
        }

        throw 'Platform not supported!';
    }

    Authorizer();

    /// Starts and completed authorization process, returning the user's session
    /// ID.
    Future<String?> authorizerUser(Uri authorizationUri);
}
