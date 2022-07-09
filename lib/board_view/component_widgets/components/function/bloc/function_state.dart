part of 'function_bloc.dart';

@immutable
class FunctionState extends AbstractComponentState<FunctionState> {
  const FunctionState(super.component);

  ComponentBase get base => componentResponse.base;

  FunctionComponentResponse get component =>
      componentResponse.functionComponent;

  @override
  FunctionState copyWithNewComponent(ComponentResponse component) =>
      FunctionState(component);
}
