import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';
import 'package:qilletni_frontend/board_view/component_inspectors/function_inspector/function_inspector.dart';
import 'package:qilletni_frontend/list_utility.dart';

part 'function_inspector_bloc.g.dart';

part 'function_inspector_event.dart';

part 'function_inspector_state.dart';

class FunctionInspectorBloc extends AbstractComponentBloc<
    FunctionInspectorEvent,
    FunctionInspectorState,
    ComponentUpdated> {
  FunctionInspectorBloc({required super.componentId,
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
  }

  final ComponentRequestRepository _componentRequestRepository;
  final FunctionProcessor functionProcessor;

  void _nameStartedEdit(NameStartedEdit event,
      Emitter<FunctionInspectorState> emit) {
    emit(state.copyWith(editingName: true));
  }

  void _nameCancelledEdit(NameCancelledEdit event,
      Emitter<FunctionInspectorState> emit) {
    state.nameController.text = state.component.name;
    emit(state.copyWith(editingName: false));
  }

  void _nameSubmitted(NameSubmitted event,
      Emitter<FunctionInspectorState> emit) {
    print('Submitting name "${state.nameController.text}"');
    emit(state.copyWith(editingName: false));
    functionProcessor.changeName(componentId, state.nameController.text);
  }

  Future<void> _onChildrenReordered(ChildrenReordered event,
      Emitter<FunctionInspectorState> emit) {
    // Transitioning is vital to ensure the UI of reordable components is fluid

    var newChildren = swap(
        state.component.children, event.oldIndex, event.newIndex);

    final newFunctionComponent = state.component.rebuild((message) {
      message.children
        ..clear()
        ..addAll(newChildren);
    });

    final newComponent = state.componentResponse.rebuild((message) {
      message.functionComponent = newFunctionComponent;
    });

    var newState = state.copyWithNewComponent(newComponent);
    emit(state.transitionTo(newState));

    return functionProcessor
        .changeChildren(
        componentId, newChildren.map((e) => e.base.componentId).toList())
        .onFailed((_) => revert(emit));
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
