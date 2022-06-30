import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'board_view_bloc.g.dart';

part 'board_view_event.dart';

part 'board_view_state.dart';

class BoardViewBloc extends Bloc<BoardViewEvent, BoardViewState> {
  BoardViewBloc({required GrpcRepository grpcRepository})
      : _grpcRepository = grpcRepository,
        super(const BoardViewState()) {
    on<BoardListed>(_onBoardListed);
    on<BoardClickAdded>(_onBoardClickAdded);
    on<BoardEndedAdding>(_onBoardEndAdding);
  }

  final GrpcRepository _grpcRepository;

  Future<void> _onBoardListed(
      BoardListed event, Emitter<BoardViewState> emit) async {
    var client = _grpcRepository.createClient((channel, callOptions) =>
        BoardServiceClient(channel, options: callOptions));

    return client.requestBoards(BoardsRequestEvent()).then((response) {
      emit(state.copyWith(
          boards: response.boards, status: BoardViewStatus.nothing));
    }).onError((error, stackTrace) {
      print('Error getting boards');
      print(error);

      // TODO: make this better
      emit(state.copyWith(boards: [], status: BoardViewStatus.nothing));
    });
  }

  void _onBoardClickAdded(BoardClickAdded event, Emitter<BoardViewState> emit) {
    emit(state.copyWith(status: BoardViewStatus.adding));
  }

  void _onBoardEndAdding(BoardEndedAdding event, Emitter<BoardViewState> emit) {
    emit(state.copyWith(status: BoardViewStatus.nothing));
  }
}
