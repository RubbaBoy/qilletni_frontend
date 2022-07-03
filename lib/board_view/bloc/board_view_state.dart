part of 'board_view_bloc.dart';

@immutable
@CopyWith()
class BoardViewState extends Equatable {
  const BoardViewState({this.components = const [], this.inspectingComponent});

  final ComponentResponse? inspectingComponent;
  final List<ComponentResponse> components;

  @override
  List<Object?> get props => [inspectingComponent, components];
}
