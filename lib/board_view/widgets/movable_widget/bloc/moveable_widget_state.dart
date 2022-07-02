part of 'moveable_widget_bloc.dart';

@immutable
@CopyWith()
class MoveableWidgetState extends Equatable {
  const MoveableWidgetState({required this.x, required this.y, this.dragging = false});

  const MoveableWidgetState.initial() : this(x: 0, y: 0);

  final bool dragging;
  final double x;
  final double y;

  @override
  List<Object?> get props => [dragging, x, y];
}
