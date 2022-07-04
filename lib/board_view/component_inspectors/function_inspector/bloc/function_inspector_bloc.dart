import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/list_utility.dart';

part 'function_inspector_bloc.g.dart';

part 'function_inspector_event.dart';

part 'function_inspector_state.dart';

class FunctionInspectorBloc
    extends Bloc<FunctionInspectorEvent, FunctionInspectorState> {
  FunctionInspectorBloc(
      {required this.component,
      required this.componentRequestRepository,
      required this.functionProcessor}) // functionProcessor: context.read<FunctionProcessor>()
      : super(FunctionInspectorState.fromComponent(component)) {
    on<NameStartedEdit>(_nameStartedEdit);
    on<NameCancelledEdit>(_nameCancelledEdit);
    on<NameSubmitted>(_nameSubmitted);
    on<ChildrenReordered>(_onChildrenReordered);
    on<ChildrenChanged>(_onChildrenChanged);
    on<ChildrenChangedExternally>(_onChildrenChangedExternally);

    functionProcessor.componentRepository
        .listenToComponent(component.base.componentId)
        .splitTypes()
        .listenType<FunctionChangeChildrenEvent>(
            (event) => add(const ChildrenChangedExternally()));
  }

  final ComponentResponse component;
  final ComponentRequestRepository componentRequestRepository;
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
    functionProcessor.changeName(component.base.componentId, event.name);
    emit(state.copyWith(name: event.name, editingName: false));
  }

  Future<void> _onChildrenReordered(
      ChildrenReordered event, Emitter<FunctionInspectorState> emit) {
    var newChildren = swap(state.children, event.oldIndex, event.newIndex);
    final oldState = state.copyWith();
    emit(state.copyWith(children: newChildren));

    return functionProcessor
        .changeChildren(component.base.componentId,
            newChildren.map((e) => e.base.componentId).toList())
        .then((error) {
      if (error != null) {
        emit(oldState);
        throw error;
      }
    });
  }

  /// Children changed from this inspector widget, so an update is required
  Future<void> _onChildrenChanged(
      ChildrenChanged event, Emitter<FunctionInspectorState> emit) {
    // TODO: Might need to make this return the future
    return functionProcessor
        .changeChildren(component.base.componentId, event.childrenIds)
        .then((_) => _getNewChildren())
        .then((children) {
      emit(state.copyWith(children: children));
    });
  }

  /// Children changed from some outsourced event
  Future<void> _onChildrenChangedExternally(
      ChildrenChangedExternally event, Emitter<FunctionInspectorState> emit) {
    return _getNewChildren()
        .then((children) => emit(state.copyWith(children: children)));
  }

  Future<List<ComponentResponse>> _getNewChildren() {
    return componentRequestRepository
        .requestFunction(component.base.componentId)
        .then(
            (functionResponse) => functionResponse.functionComponent.children);
  }
}
