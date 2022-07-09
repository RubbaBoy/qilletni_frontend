part of 'song_bloc.dart';

@immutable
class SongState extends AbstractComponentState<SongState> {
  const SongState(super.component);

  ComponentBase get base => componentResponse.base;

  SongComponentResponse get component => componentResponse.song;

  @override
  SongState copyWithNewComponent(ComponentResponse component) =>
      SongState(component);
}
