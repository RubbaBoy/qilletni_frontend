import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'component_widget_bloc.g.dart';
part 'component_widget_event.dart';
part 'component_widget_state.dart';

class ComponentWidgetBloc extends Bloc<ComponentWidgetEvent, ComponentWidgetState> {
  ComponentWidgetBloc({required this.component, required double centerX, required double centerY}) : super(const ComponentWidgetState.initial()) {
    on<DraggedComponent>(_onDraggedWidget);
    on<StartedDraggingComponent>(_onStartedDragging);
    on<EndedDraggingComponent>(_onEndedDragging);
  }

  final ComponentResponse component;

  FutureOr<void> _onDraggedWidget(DraggedComponent event, Emitter<ComponentWidgetState> emit) {
    emit(state.copyWith(x: state.x + event.dx, y: state.y + event.dy));
  }

  FutureOr<void> _onStartedDragging(StartedDraggingComponent event, Emitter<ComponentWidgetState> emit) {
    emit(state.copyWith(dragging: true));
  }

  FutureOr<void> _onEndedDragging(EndedDraggingComponent event, Emitter<ComponentWidgetState> emit) {
    emit(state.copyWith(dragging: false));
  }
}
