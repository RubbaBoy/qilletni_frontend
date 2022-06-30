part of 'board_view_bloc.dart';

@immutable
class BoardViewState extends Equatable {
  final List<Board> boards;

  const BoardViewState({required this.boards});

  const BoardViewState.initial() : boards = const [];

  @override
  List<Object?> get props => [boards];
}
