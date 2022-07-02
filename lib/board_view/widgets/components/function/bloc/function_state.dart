part of 'function_bloc.dart';

@immutable
@CopyWith()
class FunctionState extends Equatable {
  const FunctionState({required this.name, required this.children});

  FunctionState.fromResponse(ComponentResponse functionComponent)
      : name = functionComponent.functionComponent.name,
        children = functionComponent.functionComponent.children;

  final String name;
  final List<ComponentResponse> children;

  @override
  List<Object> get props => [name, children];
}
