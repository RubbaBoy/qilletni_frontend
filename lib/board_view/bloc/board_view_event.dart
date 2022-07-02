part of 'board_view_bloc.dart';

@immutable
abstract class BoardViewEvent {}

class ComponentWidgetAdded extends BoardViewEvent {}

class ComponentsUpdated extends BoardViewEvent {
  ComponentsUpdated({required this.components});

  final List<ComponentResponse> components;
}
