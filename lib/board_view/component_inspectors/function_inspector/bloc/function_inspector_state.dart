part of 'function_inspector_bloc.dart';

@immutable
@CopyWith()
class FunctionInspectorState
    extends AbstractComponentState<FunctionInspectorState> {

  const FunctionInspectorState({required ComponentResponse componentResponse, this.editingName = false})
  : super(componentResponse);

  const FunctionInspectorState.fromComponent(super.componentResponse, {this.editingName = false});

  // FunctionInspectorState.fromComponent(ComponentResponse component)
  // : editingName = false,
  //   name = component.functionComponent.name,
  //   children = component.functionComponent.children;

  final bool editingName;

  ComponentBase get base => componentResponse.base;

  FunctionComponentResponse get component =>
      componentResponse.functionComponent;

  @override
  FunctionInspectorState copyWithNewComponent(ComponentResponse componentResponse) =>
      FunctionInspectorState(componentResponse: componentResponse, editingName: editingName);

  @override
  List<Object?> get props => [componentResponse, editingName];
}
