part of 'song_bloc.dart';

@immutable
@CopyWith()
class SongState extends Equatable {
  const SongState({required this.songId});

  SongState.fromResponse(ComponentResponse songComponent)
      : songId = songComponent.song.song.id;

  final String songId;

  @override
  List<Object?> get props => [songId];
}
