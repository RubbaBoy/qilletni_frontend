part of 'song_bloc.dart';

@immutable
class SongState extends AbstractComponentState<SongState> {
  const SongState.fromComponent(super.componentResponse);

  ComponentBase get base => componentResponse.base;

  SongComponentResponse get component => componentResponse.song;

  @override
  SongState copyWithNewComponent(ComponentResponse componentResponse) =>
      SongState.fromComponent(componentResponse);

  @override
  SongState transitionTo(SongState newState) =>
      TransitioningSongState(originalState: this, newState: newState);
}

class TransitioningSongState extends SongState
    with TransitioningState<SongState> {
  TransitioningSongState(
      {required this.originalState, required SongState newState})
      : super.fromComponent(newState.componentResponse);

  @override
  final SongState originalState;
}
