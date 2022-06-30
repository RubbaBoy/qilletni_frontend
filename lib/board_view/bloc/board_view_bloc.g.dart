// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_view_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BoardViewStateCWProxy {
  BoardViewState boards(List<Board> boards);

  BoardViewState status(BoardViewStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardViewState call({
    List<Board>? boards,
    BoardViewStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBoardViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBoardViewState.copyWith.fieldName(...)`
class _$BoardViewStateCWProxyImpl implements _$BoardViewStateCWProxy {
  final BoardViewState _value;

  const _$BoardViewStateCWProxyImpl(this._value);

  @override
  BoardViewState boards(List<Board> boards) => this(boards: boards);

  @override
  BoardViewState status(BoardViewStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardViewState call({
    Object? boards = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return BoardViewState(
      boards: boards == const $CopyWithPlaceholder() || boards == null
          ? _value.boards
          // ignore: cast_nullable_to_non_nullable
          : boards as List<Board>,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BoardViewStatus,
    );
  }
}

extension $BoardViewStateCopyWith on BoardViewState {
  /// Returns a callable class that can be used as follows: `instanceOfBoardViewState.copyWith(...)` or like so:`instanceOfBoardViewState.copyWith.fieldName(...)`.
  _$BoardViewStateCWProxy get copyWith => _$BoardViewStateCWProxyImpl(this);
}
