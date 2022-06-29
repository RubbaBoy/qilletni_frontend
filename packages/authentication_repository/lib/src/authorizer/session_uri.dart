import 'dart:async';

import 'package:uni_links/uni_links.dart';

Future<String> waitForSessionId() {
  final completer = Completer<String>();

  StreamSubscription? sub;
  sub = uriLinkStream.listen((Uri? uri) {
    var sessionId = uri?.queryParameters['sessionId'];
    sub?.cancel();

    if (sessionId == null) {
      completer.completeError('sessionId null');
      return;
    }

    completer.complete(sessionId);
  }, onError: (err) {
    sub?.cancel();
    completer.completeError(err);
  });

  return completer.future;
}