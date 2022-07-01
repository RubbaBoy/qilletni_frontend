// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_list_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BoardListStateCWProxy {
  BoardListState boards(List<Board> boards);

  BoardListState status(BoardListStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardListState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardListState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardListState call({
    List<Board>? boards,
    BoardListStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBoardListState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBoardListState.copyWith.fieldName(...)`
class _$BoardListStateCWProxyImpl implements _$BoardListStateCWProxy {
  final BoardListState _value;

  const _$BoardListStateCWProxyImpl(this._value);

  @override
  BoardListState boards(List<Board> boards) => this(boards: boards);

  @override
  BoardListState status(BoardListStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardListState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardListState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardListState call({
    Object? boards = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return BoardListState(
      boards: boards == const $CopyWithPlaceholder() || boards == null
          ? _value.boards
          // ignore: cast_nullable_to_non_nullable
          : boards as List<Board>,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BoardListStatus,
    );
  }
}

extension $BoardListStateCopyWith on BoardListState {
  /// Returns a callable class that can be used as follows: `instanceOfBoardListState.copyWith(...)` or like so:`instanceOfBoardListState.copyWith.fieldName(...)`.
  _$BoardListStateCWProxy get copyWith => _$BoardListStateCWProxyImpl(this);
}
