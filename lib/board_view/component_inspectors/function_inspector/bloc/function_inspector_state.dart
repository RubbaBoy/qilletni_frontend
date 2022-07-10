part of 'function_inspector_bloc.dart';

@immutable
@CopyWith()
class FunctionInspectorState
    extends AbstractComponentState<FunctionInspectorState> {
  const FunctionInspectorState(
      {required ComponentResponse componentResponse, this.editingName = false})
      : super(componentResponse);

  const FunctionInspectorState.fromComponent(super.componentResponse,
      {this.editingName = false});

  final bool editingName;

  ComponentBase get base => componentResponse.base;

  FunctionComponentResponse get component =>
      componentResponse.functionComponent;

  @override
  FunctionInspectorState copyWithNewComponent(
          ComponentResponse componentResponse) =>
      FunctionInspectorState(
          componentResponse: componentResponse, editingName: editingName);

  @override
  TransitioningFunctionInspectorState transitionTo(
          FunctionInspectorState newState) =>
      TransitioningFunctionInspectorState(
          originalState: this, newState: newState);

  @override
  List<Object?> get props => [componentResponse, editingName];
}

class TransitioningFunctionInspectorState extends FunctionInspectorState
    with TransitioningState<FunctionInspectorState> {
  TransitioningFunctionInspectorState(
      {required this.originalState, required FunctionInspectorState newState})
      : super(
            componentResponse: newState.componentResponse,
            editingName: newState.editingName);

  @override
  final FunctionInspectorState originalState;
}
