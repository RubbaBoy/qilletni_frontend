part of 'song_bloc.dart';

@immutable
abstract class SongEvent {
  const SongEvent();
}

class SongChanged extends SongEvent {
  const SongChanged(this.songId);

  final String songId;
}
