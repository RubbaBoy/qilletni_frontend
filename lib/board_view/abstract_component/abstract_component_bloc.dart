import 'dart:async';

import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';

typedef InitialStateCreator<State> = State Function(ComponentResponse);
typedef UpdateEventCreator<Event> = Event Function(ComponentResponse);

/// [Event] is the bloc Event type, [State] is the bloc State. [U] must extend
/// [Event] and also **MUST** have the mixin [ComponentUpdatedEventMixin].
abstract class AbstractComponentBloc<
    Event,
    State extends AbstractComponentState<State>,
    U extends Event> extends Bloc<Event, State> {
  AbstractComponentBloc(
      {required this.componentId,
      required this.boardComponentManager,
      required UpdateEventCreator<U> updateEventCreator,
      required InitialStateCreator<State> initialStateCreator})
      : super(initialStateCreator(
            boardComponentManager.getComponent(componentId))) {
    on<U>((event, emit) => emit(state.copyWithNewComponent(
        (event as ComponentUpdatedEventMixin).componentResponse)));

    _componentStreamSubscription = boardComponentManager.componentRepository
        .componentStream(componentId)
        .listen((component) => add(updateEventCreator(component)));
  }

  final String componentId;
  final BoardComponentManager boardComponentManager;
  late final StreamSubscription<ComponentResponse> _componentStreamSubscription;

  /// If the current [state] is a [TransitioningState], its
  /// [TransitioningState.originalState] is emitted to the [emit] parameter.
  void revert(Emitter<State> emit) {
    if (state is TransitioningState<State>) {
      final transitionState = state as TransitioningState<State>;

      emit(transitionState.originalState);
    } else {
      print('${state.runtimeType} is not a TransitioningState');
    }
  }

  @override
  Future<void> close() {
    _componentStreamSubscription.cancel();
    return super.close();
  }
}
