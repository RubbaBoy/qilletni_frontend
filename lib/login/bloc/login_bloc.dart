import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const LoginState()) {
    on<LoginStarted>(_onLoginStarted);

    on<LoginCancelled>((event, emit) {
      // TODO: cancelled
    });
  }

  final AuthenticationRepository _authenticationRepository;

  void _onLoginStarted(LoginStarted event, Emitter<LoginState> emit) {
    _authenticationRepository.authorizeUser().then((sessionId) {
      if (sessionId == null || sessionId.isEmpty) {
        throw 'sessionId could not be fetched';
      }

      // TODO: This doesn't actually emit a state back... not good I think?
      return _authenticationRepository.authUser(sessionId);
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
