import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'board_view_bloc.g.dart';
part 'board_view_event.dart';
part 'board_view_state.dart';

class BoardViewBloc extends Bloc<BoardViewEvent, BoardViewState> {
  BoardViewBloc({required this.structureRepository, required this.board, required this.boardKey}) : super(const BoardViewState()) {
    on<ComponentWidgetAdded>(_onComponentWidgetAdded);
    on<ComponentsUpdated>(_onComponentUpdated);

    structureRepository.requestStructure(board.id).then((components) {
      print('Found ${components.length} components');

      add(ComponentsUpdated(components: components));
    });
  }

  final StructureRepository structureRepository;
  final Board board;
  final GlobalKey boardKey;

  FutureOr<void> _onComponentWidgetAdded(ComponentWidgetAdded event, Emitter<BoardViewState> emit) {

  }

  FutureOr<void> _onComponentUpdated(ComponentsUpdated event, Emitter<BoardViewState> emit) {
    emit(state.copyWith(components: event.components));
  }
}
