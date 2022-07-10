part of 'function_bloc.dart';

@immutable
class FunctionState extends AbstractComponentState<FunctionState> {
  const FunctionState.fromComponent(super.componentResponse);

  ComponentBase get base => componentResponse.base;

  FunctionComponentResponse get component =>
      componentResponse.functionComponent;

  @override
  FunctionState copyWithNewComponent(ComponentResponse componentResponse) =>
      FunctionState.fromComponent(componentResponse);

  @override
  TransitioningFunctionState transitionTo(FunctionState newState) =>
      TransitioningFunctionState(originalState: this, newState: newState);
}

class TransitioningFunctionState extends FunctionState
    with TransitioningState<FunctionState> {
  TransitioningFunctionState(
      {required this.originalState, required FunctionState newState})
      : super.fromComponent(newState.componentResponse);

  @override
  final FunctionState originalState;
}
