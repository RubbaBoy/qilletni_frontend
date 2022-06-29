part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

/// An event sent to the business logic when the client should be sent to the
/// redirect
class LoginStarted extends LoginEvent {}

/// An event for when the user cancels the login for whatever reason
class LoginCancelled extends LoginEvent {}
