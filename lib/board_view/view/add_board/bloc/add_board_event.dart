part of 'add_board_bloc.dart';

@immutable
abstract class AddBoardEvent {
  const AddBoardEvent();
}

class ChangedName extends AddBoardEvent {
  const ChangedName(this.name);

  final String name;
}

class SubmittedBoard extends AddBoardEvent {
  const SubmittedBoard();
}

class CancelledBoard extends AddBoardEvent {
  const CancelledBoard();
}
