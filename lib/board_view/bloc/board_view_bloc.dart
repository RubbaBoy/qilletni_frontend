import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:component_grpc/component_grpc.dart';

part 'board_view_event.dart';

part 'board_view_state.dart';

class BoardViewBloc extends Bloc<BoardListed, BoardViewState> {
  BoardViewBloc({required GrpcRepository grpcRepository})
      : _grpcRepository = grpcRepository,
        super(const BoardViewState.initial()) {

    on<BoardListed>(_onBoardListed);
  }

  final GrpcRepository _grpcRepository;

  Future<void> _onBoardListed(BoardListed event, Emitter<BoardViewState> emit) async {
    var client = _grpcRepository.createClient((channel, callOptions) => BoardServiceClient(channel, options: callOptions));

    return client.requestBoards(BoardsRequestEvent())
        .then((response) {
      emit(BoardViewState(boards: response.boards));
    }).onError((error, stackTrace) {
      print('Error getting boards');
      print(error);

      // TODO: make this better
      emit(const BoardViewState.initial());
    });
  }
}
