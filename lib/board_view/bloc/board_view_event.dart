part of 'board_view_bloc.dart';

@immutable
abstract class BoardViewEvent {}

class BoardListed extends BoardViewEvent {}

class BoardClickAdded extends BoardViewEvent {}

class BoardEndedAdding extends BoardViewEvent {}
