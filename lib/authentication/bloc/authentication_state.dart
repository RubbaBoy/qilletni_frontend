part of 'authentication_bloc.dart';

@immutable
class AuthenticationState {
  const AuthenticationState._(
      {this.status = AuthenticationStatus.unknown, this.userInfo});

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState.authenticated(UserInfo userInfo)
      : this._(status: AuthenticationStatus.authenticated, userInfo: userInfo);

  final AuthenticationStatus status;
  final UserInfo? userInfo;

  @override
  String toString() {
    return 'AuthenticationState{status: $status, userInfo: $userInfo}';
  }
}
