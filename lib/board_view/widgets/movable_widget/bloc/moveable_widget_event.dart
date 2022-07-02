part of 'moveable_widget_bloc.dart';

@immutable
abstract class MoveableWidgetEvent {}

class DraggedComponent extends MoveableWidgetEvent {
  DraggedComponent(this.dx, this.dy);

  final double dx;
  final double dy;
}

class StartedDraggingComponent extends MoveableWidgetEvent {}
class EndedDraggingComponent extends MoveableWidgetEvent {}
