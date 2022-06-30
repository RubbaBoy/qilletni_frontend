import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/src/authorizer/authorizer.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final AuthenticationApi _authApi;
  final Authorizer _authorizer;
  final SessionStore _sessionStore;
  final _controller = StreamController<AuthenticationStatus>();

  AuthenticationRepository._(
      this._authApi, this._authorizer, this._sessionStore);

  factory AuthenticationRepository(SessionStore sessionStore) {
    return AuthenticationRepository._(
        AuthenticationApi(), Authorizer.create(), sessionStore);
  }

  Future<String> getAuthorizationUrl() => _authApi.requestLoginUrl();

  Stream<AuthenticationStatus> get status async* {
    auth:
    {
      if (_sessionStore.hasSessionId()) {
        if (await authUser(_sessionStore.getSessionId())) {
          break auth;
        } else {
          _sessionStore.clearSessionId();
        }
      }

      yield AuthenticationStatus.unauthenticated;
    }

    yield* _controller.stream;
  }

  /// Attempts to authenticate the user with the given [sessionId]. If valid,
  /// this sets the value for `getUser()`, stores the result, and returns
  /// `true`. Otherwise, `false` is returned.
  Future<bool> authUser(String sessionId) {
    return _authApi.setSessionId(sessionId).then((authed) {
      if (authed) {
        _sessionStore.storeSessionId(sessionId);
        _controller.add(AuthenticationStatus.authenticated);
      }

      return authed;
    });
  }

  UserInfo? getUser() => _authApi.userInfo;

  String getSessionId() =>
      _sessionStore.hasSessionId() ? _sessionStore.getSessionId() : '';

  Future<String?> authorizeUser() => getAuthorizationUrl()
      .then((url) => _authorizer.authorizeUser(Uri.parse(url)));

  void logOut() {
    _sessionStore.clearSessionId();
    _authApi.logOut();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
