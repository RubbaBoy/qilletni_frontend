part of 'login_bloc.dart';

enum LoginStatus {
  /// Showing the "log in" button
  notStarted,

  /// When the user is at the page logging in with Spotify
  waitingForOAuth,
}

@immutable
class LoginState {
  const LoginState({this.status = LoginStatus.notStarted});

  final LoginStatus status;
}
