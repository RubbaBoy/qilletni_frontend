part of 'component_widget_bloc.dart';

@immutable
abstract class ComponentWidgetEvent {}

class DraggedComponent extends ComponentWidgetEvent {
  DraggedComponent(this.dx, this.dy);

  final double dx;
  final double dy;
}

class StartedDraggingComponent extends ComponentWidgetEvent {}
class EndedDraggingComponent extends ComponentWidgetEvent {}
