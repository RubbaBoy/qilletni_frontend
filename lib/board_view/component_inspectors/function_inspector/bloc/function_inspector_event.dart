part of 'function_inspector_bloc.dart';

@immutable
abstract class FunctionInspectorEvent {
  const FunctionInspectorEvent();
}

class NameStartedEdit extends FunctionInspectorEvent {}
class NameCancelledEdit extends FunctionInspectorEvent {}

class NameSubmitted extends FunctionInspectorEvent {
  const NameSubmitted(this.name);

  final String name;
}

class ChildrenChanged extends FunctionInspectorEvent {
  const ChildrenChanged(this.childrenIds);

  final List<String> childrenIds;
}

class ChildrenReordered extends FunctionInspectorEvent {
  const ChildrenReordered(this.oldIndex, this.newIndex);

  final int oldIndex;
  final int newIndex;
}

class ComponentUpdated extends FunctionInspectorEvent with ComponentUpdatedEventMixin {
  const ComponentUpdated(this.componentResponse);

  @override
  final ComponentResponse componentResponse;
}
