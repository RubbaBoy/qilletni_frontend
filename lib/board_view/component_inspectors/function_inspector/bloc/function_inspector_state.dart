part of 'function_inspector_bloc.dart';

@immutable
@CopyWith()
class FunctionInspectorState
    extends AbstractComponentState<FunctionInspectorState> {
  const FunctionInspectorState(
      {required ComponentResponse componentResponse,
      required this.scrollController,
      required this.nameController,
      this.editingName = false})
      : super(componentResponse);

  FunctionInspectorState.fromComponent(super.componentResponse,
      {this.editingName = false, ScrollController? scrollController, TextEditingController? nameController})
      : scrollController = scrollController ?? ScrollController(),
        nameController = nameController ?? TextEditingController(text: componentResponse.functionComponent.name);

  final bool editingName;
  final ScrollController scrollController;
  final TextEditingController nameController;

  ComponentBase get base => componentResponse.base;

  FunctionComponentResponse get component =>
      componentResponse.functionComponent;

  @override
  FunctionInspectorState copyWithNewComponent(
          ComponentResponse componentResponse) =>
      FunctionInspectorState(
          componentResponse: componentResponse,
          editingName: editingName,
          scrollController: scrollController,
          nameController: nameController);

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
            editingName: newState.editingName,
            scrollController: newState.scrollController,
            nameController: newState.nameController);

  @override
  final FunctionInspectorState originalState;
}
