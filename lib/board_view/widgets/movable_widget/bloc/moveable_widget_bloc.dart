import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'moveable_widget_bloc.g.dart';

part 'moveable_widget_event.dart';

part 'moveable_widget_state.dart';

class MoveableWidgetBloc
    extends Bloc<MoveableWidgetEvent, MoveableWidgetState> {
  MoveableWidgetBloc(
      {required this.component,
      required double centerX,
      required double centerY})
      : super(const MoveableWidgetState(x: 250, y: 100)) {
    on<DraggedComponent>(_onDraggedWidget);
    on<StartedDraggingComponent>(_onStartedDragging);
    on<EndedDraggingComponent>(_onEndedDragging);
  }

  final ComponentResponse component;

  FutureOr<void> _onDraggedWidget(
      DraggedComponent event, Emitter<MoveableWidgetState> emit) {
    emit(state.copyWith(x: state.x + event.dx, y: state.y + event.dy));
  }

  FutureOr<void> _onStartedDragging(
      StartedDraggingComponent event, Emitter<MoveableWidgetState> emit) {
    emit(state.copyWith(dragging: true));
  }

  FutureOr<void> _onEndedDragging(
      EndedDraggingComponent event, Emitter<MoveableWidgetState> emit) {
    emit(state.copyWith(dragging: false));
  }
}
