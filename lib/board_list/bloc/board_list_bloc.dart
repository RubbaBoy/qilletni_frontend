import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'board_list_bloc.g.dart';

part 'board_list_event.dart';

part 'board_list_state.dart';

class BoardListBloc extends Bloc<BoardListEvent, BoardListState> {
  BoardListBloc({required this.boardProcessor})
      : super(const BoardListState()) {
    on<BoardListed>(_onBoardListed);
    on<BoardClickAdded>(_onBoardClickAdded);
    on<BoardEndedAdding>(_onBoardEndAdding);
  }

  final BoardProcessor boardProcessor;

  Future<void> _onBoardListed(
      BoardListed event, Emitter<BoardListState> emit) async {
    // TODO: Use BoardProcessor
    return boardProcessor.requestBoards().then((boards) {
      emit(state.copyWith(boards: boards, status: BoardListStatus.nothing));
    }).onError((error, stackTrace) {
      print('Error getting boards');
      print(error);

      // TODO: make this better
      emit(state.copyWith(boards: [], status: BoardListStatus.nothing));
    });
  }

  void _onBoardClickAdded(BoardClickAdded event, Emitter<BoardListState> emit) {
    emit(state.copyWith(status: BoardListStatus.adding));
  }

  void _onBoardEndAdding(BoardEndedAdding event, Emitter<BoardListState> emit) {
    emit(state.copyWith(status: BoardListStatus.nothing));
  }
}
