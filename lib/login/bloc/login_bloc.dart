import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.authenticationRepository})
      : super(const LoginState()) {
    on<LoginStarted>(_onLoginStarted);

    on<LoginCancelled>((event, emit) {
      // TODO: cancelled
    });
  }

  final AuthenticationRepository authenticationRepository;
  final List<StreamSubscription> uriListeners = [];

  void _onLoginStarted(LoginStarted event, Emitter<LoginState> emit) {
    authenticationRepository.authorizeUser().then((sessionId) {
      if (sessionId == null || sessionId.isEmpty) {
        throw 'sessionId could not be fetched';
      }

      return authenticationRepository.authUser(sessionId);
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
