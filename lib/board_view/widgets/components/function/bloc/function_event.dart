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
