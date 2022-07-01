part of 'board_list_bloc.dart';

enum BoardListStatus { nothing, adding }

@immutable
@CopyWith()
class BoardListState extends Equatable {
  const BoardListState(
      {this.boards = const [], this.status = BoardListStatus.nothing});

  final BoardListStatus status;
  final List<Board> boards;

  @override
  List<Object?> get props => [boards, status];
}
