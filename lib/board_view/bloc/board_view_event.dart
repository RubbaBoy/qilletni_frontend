part of 'board_view_bloc.dart';

@immutable
abstract class BoardViewEvent {
  const BoardViewEvent();
}

class ComponentInspected extends BoardViewEvent {
  const ComponentInspected({required this.component});

  final ComponentResponse component;
}

class InspectViewClosed extends BoardViewEvent {
  const InspectViewClosed();
}

class ComponentWidgetAdded extends BoardViewEvent {
  const ComponentWidgetAdded();
}

class ComponentsUpdated extends BoardViewEvent {
  const ComponentsUpdated({required this.components});

  final List<ComponentResponse> components;
}
