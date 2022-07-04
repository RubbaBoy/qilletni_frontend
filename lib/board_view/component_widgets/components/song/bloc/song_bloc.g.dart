// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SongStateCWProxy {
  SongState song(Song song);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SongState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SongState(...).copyWith(id: 12, name: "My name")
  /// ````
  SongState call({
    Song? song,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSongState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSongState.copyWith.fieldName(...)`
class _$SongStateCWProxyImpl implements _$SongStateCWProxy {
  final SongState _value;

  const _$SongStateCWProxyImpl(this._value);

  @override
  SongState song(Song song) => this(song: song);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SongState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SongState(...).copyWith(id: 12, name: "My name")
  /// ````
  SongState call({
    Object? song = const $CopyWithPlaceholder(),
  }) {
    return SongState(
      song: song == const $CopyWithPlaceholder() || song == null
          ? _value.song
          // ignore: cast_nullable_to_non_nullable
          : song as Song,
    );
  }
}

extension $SongStateCopyWith on SongState {
  /// Returns a callable class that can be used as follows: `instanceOfSongState.copyWith(...)` or like so:`instanceOfSongState.copyWith.fieldName(...)`.
  _$SongStateCWProxy get copyWith => _$SongStateCWProxyImpl(this);
}
