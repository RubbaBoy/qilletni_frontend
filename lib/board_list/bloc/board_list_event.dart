part of 'board_list_bloc.dart';

@immutable
abstract class BoardListEvent {}

class BoardListed extends BoardListEvent {}

class BoardClickAdded extends BoardListEvent {}

class BoardEndedAdding extends BoardListEvent {}
