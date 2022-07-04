part of 'song_bloc.dart';

@immutable
abstract class SongEvent {
  const SongEvent();
}

class SongChanged extends SongEvent {
  const SongChanged(this.song);

  final Song song;
}
