import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/input/board_name.dart';

part 'add_board_bloc.g.dart';
part 'add_board_event.dart';
part 'add_board_state.dart';

class AddBoardBloc extends Bloc<AddBoardEvent, AddBoardState> {
  AddBoardBloc({required GrpcRepository grpcRepository})
      : _grpcRepository = grpcRepository,
        super(const AddBoardState()) {
    on<ChangedName>(_onChangeName);
    on<SubmittedBoard>(_onSubmitBoard);
    on<CancelledBoard>(_onCancelledBoard);
  }

  final GrpcRepository _grpcRepository;

  void _onChangeName(ChangedName event, Emitter<AddBoardState> emit) {
    final name = BoardName.dirty(event.name);
    emit(state.copyWith(boardName: name, status: Formz.validate([name])));
  }

  Future<void> _onSubmitBoard(
      SubmittedBoard event, Emitter<AddBoardState> emit) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    try {
      var client = _grpcRepository.createClient((channel, callOptions) =>
          BoardServiceClient(channel, options: callOptions));

      var created =
          await client.create(BoardCreateEvent(name: state.boardName.value));

      if (created.hasError()) {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: created.error.message));
        return;
      }

      print('Created board with ID: ${created.boardId}');

      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: '$e'));
    }
  }

  void _onCancelledBoard(CancelledBoard event, Emitter<AddBoardState> emit) {
    emit(const AddBoardState.cancelling());
  }
}
