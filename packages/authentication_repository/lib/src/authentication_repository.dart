import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:authentication_repository/src/authorizer/authorizer.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final AuthenticationApi _authApi;
  final Authorizer _authorizer;
  final _controller = StreamController<AuthenticationStatus>();

  AuthenticationRepository._(this._authApi, this._authorizer);

  factory AuthenticationRepository() {
    return AuthenticationRepository._(AuthenticationApi(), Authorizer.create());
  }

  Future<String> getAuthorizationUrl() => _authApi.requestLoginUrl();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> authUser(String sessionId) {
    return _authApi
        .setSessionId(sessionId)
        .then((_) => _controller.add(AuthenticationStatus.authenticated));
  }

  UserInfo? getUser() => _authApi.userInfo;

  Future<String?> authorizerUser() => getAuthorizationUrl()
      .then((url) => _authorizer.authorizerUser(Uri.parse(url)));

  void logout() {
    _authApi.logOut();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  // Future<void> logIn({
  //   required String username,
  //   required String password,
  // }) async {
  //
  //   await Future.delayed(
  //     const Duration(milliseconds: 300),
  //         () => _controller.add(AuthenticationStatus.authenticated),
  //   );
  // }
  //
  // void logOut() {
  //   _controller.add(AuthenticationStatus.unauthenticated);
  // }

  void dispose() => _controller.close();
}
