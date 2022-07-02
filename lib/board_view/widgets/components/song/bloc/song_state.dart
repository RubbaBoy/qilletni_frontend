part of 'song_bloc.dart';

@immutable
@CopyWith()
class SongState extends Equatable {
  const SongState({required this.song});

  SongState.fromResponse(ComponentResponse songComponent)
      : song = songComponent.song.song;

  final Song song;

  @override
  List<Object?> get props => [song];
}
