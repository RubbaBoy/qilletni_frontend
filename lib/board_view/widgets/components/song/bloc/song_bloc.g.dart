// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SongStateCWProxy {
  SongState songId(String songId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SongState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SongState(...).copyWith(id: 12, name: "My name")
  /// ````
  SongState call({
    String? songId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSongState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSongState.copyWith.fieldName(...)`
class _$SongStateCWProxyImpl implements _$SongStateCWProxy {
  final SongState _value;

  const _$SongStateCWProxyImpl(this._value);

  @override
  SongState songId(String songId) => this(songId: songId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SongState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SongState(...).copyWith(id: 12, name: "My name")
  /// ````
  SongState call({
    Object? songId = const $CopyWithPlaceholder(),
  }) {
    return SongState(
      songId: songId == const $CopyWithPlaceholder() || songId == null
          ? _value.songId
          // ignore: cast_nullable_to_non_nullable
          : songId as String,
    );
  }
}

extension $SongStateCopyWith on SongState {
  /// Returns a callable class that can be used as follows: `instanceOfSongState.copyWith(...)` or like so:`instanceOfSongState.copyWith.fieldName(...)`.
  _$SongStateCWProxy get copyWith => _$SongStateCWProxyImpl(this);
}
