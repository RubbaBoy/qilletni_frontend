part of 'component_widget_bloc.dart';

@immutable
@CopyWith()
class ComponentWidgetState extends Equatable {
  const ComponentWidgetState({required this.x, required this.y, this.dragging = false});

  const ComponentWidgetState.initial() : this(x: 0, y: 0);

  final bool dragging;
  final double x;
  final double y;

  @override
  List<Object?> get props => [dragging, x, y];
}
