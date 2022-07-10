import 'package:component_grpc/component_grpc.dart';
import 'package:equatable/equatable.dart';

abstract class AbstractComponentState<State> extends Equatable {
  const AbstractComponentState(this.componentResponse);

  /// Copies the current state with a new [ComponentResponse].
  State copyWithNewComponent(ComponentResponse componentResponse);

  final ComponentResponse componentResponse;

  /// Creates a [TransitioningState] that contains the current state as the
  /// original (able to be reverted to) with the persistent state data coming
  /// from [newState].
  State transitionTo(State newState);

  @override
  List<Object?> get props => [componentResponse];
}

mixin TransitioningState<State extends AbstractComponentState>
    on AbstractComponentState<State> {

  /// The state used during cloning or reverting from an error.
  State get originalState;

  /// Invoked the normal [AbstractComponentState.copyWithNewComponent]
  /// implementation, but on the [originalState]. This means every time the
  /// component is updated, any [TransitioningState]-specific data is thrown
  /// away. This could be improved, but this shouldn't break upon nested
  /// [TransitioningState]s.
  @override
  State copyWithNewComponent(ComponentResponse componentResponse) {
    return originalState.copyWithNewComponent(componentResponse);
  }
}
