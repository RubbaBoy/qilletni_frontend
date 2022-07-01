part of 'add_board_bloc.dart';

@immutable
@CopyWith()
class AddBoardState extends Equatable {
  const AddBoardState({
    this.boardName = const BoardName.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  const AddBoardState.cancelling()
      : this(status: FormzStatus.submissionCanceled);

  final BoardName boardName;
  final FormzStatus status;
  final String? errorMessage;

  @override
  List<Object> get props => [status, boardName];
}
