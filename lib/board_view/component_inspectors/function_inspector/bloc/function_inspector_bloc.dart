import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';
import 'package:qilletni_frontend/list_utility.dart';

part 'function_inspector_bloc.g.dart';

part 'function_inspector_event.dart';

part 'function_inspector_state.dart';

class FunctionInspectorBloc extends AbstractComponentBloc<
    FunctionInspectorEvent, FunctionInspectorState, ComponentUpdated> {
  FunctionInspectorBloc(
      {required super.componentId,
      required super.boardComponentManager,
      required this.functionProcessor}) // functionProcessor: context.read<FunctionProcessor>()
      : _componentRequestRepository =
            boardComponentManager.componentRequestRepository,
        super(
            updateEventCreator: ComponentUpdated.new,
            initialStateCreator: FunctionInspectorState.fromComponent) {
    on<NameStartedEdit>(_nameStartedEdit);
    on<NameCancelledEdit>(_nameCancelledEdit);
    on<NameSubmitted>(_nameSubmitted);
    on<ChildrenReordered>(_onChildrenReordered);
    // on<ChildrenChanged>(_onChildrenChanged);
  }

  final ComponentRequestRepository _componentRequestRepository;
  final FunctionProcessor functionProcessor;

  void _nameStartedEdit(
      NameStartedEdit event, Emitter<FunctionInspectorState> emit) {
    emit(state.copyWith(editingName: true));
  }

  void _nameCancelledEdit(
      NameCancelledEdit event, Emitter<FunctionInspectorState> emit) {
    emit(state.copyWith(editingName: false));
  }

  void _nameSubmitted(
      NameSubmitted event, Emitter<FunctionInspectorState> emit) {
    functionProcessor.changeName(componentId, event.name);
  }

  void _onChildrenReordered(
      ChildrenReordered event, Emitter<FunctionInspectorState> emit) {
    /* var newChildren =
        swap(state.component.children, event.oldIndex, event.newIndex);
    final oldState = state.copyWith();
    emit(state.copyWith(children: newChildren));

    return functionProcessor
        .changeChildren(
            componentId, newChildren.map((e) => e.base.componentId).toList())
        .then((error) {
      if (error != null) {
        emit(oldState);
        throw error;
      }
    }); */

    var newChildren = swap(state.component.children, event.oldIndex, event.newIndex);

    functionProcessor
        .changeChildren(
        componentId, newChildren.map((e) => e.base.componentId).toList());
  }

  // /// Children changed from this inspector widget, so an update is required
  // Future<void> _onChildrenChanged(
  //     ChildrenChanged event, Emitter<FunctionInspectorState> emit) {
  //   // TODO: Might need to make this return the future
  //   return functionProcessor
  //       .changeChildren(componentId, event.childrenIds)
  //       .then((_) => _getNewChildren());
  // }

  // Future<List<ComponentResponse>> _getNewChildren() {
  //   return componentRequestRepository
  //       .requestFunction(component.base.componentId)
  //       .then(
  //           (functionResponse) => functionResponse.functionComponent.children);
  // }
}
