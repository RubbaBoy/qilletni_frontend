import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'board_list_bloc.g.dart';
part 'board_list_event.dart';
part 'board_list_state.dart';

class BoardListBloc extends Bloc<BoardListEvent, BoardListState> {
  BoardListBloc({required GrpcRepository grpcRepository})
      : _grpcRepository = grpcRepository,
        super(const BoardListState()) {
    on<BoardListed>(_onBoardListed);
    on<BoardClickAdded>(_onBoardClickAdded);
    on<BoardEndedAdding>(_onBoardEndAdding);
  }

  final GrpcRepository _grpcRepository;

  Future<void> _onBoardListed(
      BoardListed event, Emitter<BoardListState> emit) async {
    var client = _grpcRepository.createClient((channel, callOptions) =>
        BoardServiceClient(channel, options: callOptions));

    return client.requestBoards(BoardsRequestEvent()).then((response) {
      emit(state.copyWith(
          boards: response.boards, status: BoardListStatus.nothing));
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
