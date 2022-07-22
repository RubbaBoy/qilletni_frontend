import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'function_handle_event.dart';
part 'function_handle_state.dart';

class FunctionHandleBloc extends Bloc<FunctionHandleEvent, FunctionHandleState> {
  FunctionHandleBloc() : super(FunctionHandleInitial()) {
    on<FunctionHandleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
