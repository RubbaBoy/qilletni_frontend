part of 'function_inspector_bloc.dart';

@immutable
@CopyWith()
class FunctionInspectorState extends Equatable {
  const FunctionInspectorState({required this.name, required this.children, this.editingName = false});

  FunctionInspectorState.fromComponent(ComponentResponse component)
    : editingName = false,
      name = component.functionComponent.name,
      children = component.functionComponent.children;

  final bool editingName;
  final String name;
  final List<ComponentResponse> children;

  @override
  List<Object?> get props => [editingName, name, children];
}
