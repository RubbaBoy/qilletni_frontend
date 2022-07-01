import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'board_view_event.dart';
part 'board_view_state.dart';

class BoardViewBloc extends Bloc<BoardViewEvent, BoardViewState> {
  BoardViewBloc({required this.boardKey}) : super(BoardViewInitial()) {
    on<ComponentWidgetAdded>(_onComponentWidgetAdded);
  }

  final GlobalKey boardKey;

  FutureOr<void> _onComponentWidgetAdded(ComponentWidgetAdded event, Emitter<BoardViewState> emit) {

  }
}
