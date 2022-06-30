part of 'board_view_bloc.dart';

enum BoardViewStatus { nothing, adding }

@immutable
@CopyWith()
class BoardViewState extends Equatable {
  const BoardViewState(
      {this.boards = const [], this.status = BoardViewStatus.nothing});

  final BoardViewStatus status;
  final List<Board> boards;

  @override
  List<Object?> get props => [boards, status];
}
