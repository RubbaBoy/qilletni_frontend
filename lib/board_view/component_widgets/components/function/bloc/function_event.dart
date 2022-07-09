part of 'function_bloc.dart';

@immutable
abstract class FunctionEvent {
  const FunctionEvent();
}

class ChildrenReordered extends FunctionEvent {
  const ChildrenReordered(this.oldIndex, this.newIndex);

  final int oldIndex;
  final int newIndex;
}

class ComponentUpdated extends FunctionEvent with ComponentUpdatedEventMixin {
  const ComponentUpdated(this.componentResponse);

  @override
  final ComponentResponse componentResponse;
}
