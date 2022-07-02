part of 'board_view_bloc.dart';

@immutable
@CopyWith()
class BoardViewState extends Equatable {
  const BoardViewState({this.components = const []});

  final List<ComponentResponse> components;

  @override
  List<Object> get props => [components];
}
