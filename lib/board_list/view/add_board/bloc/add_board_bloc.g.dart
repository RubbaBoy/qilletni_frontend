// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_board_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddBoardStateCWProxy {
  AddBoardState boardName(BoardName boardName);

  AddBoardState errorMessage(String? errorMessage);

  AddBoardState status(FormzStatus status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddBoardState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddBoardState(...).copyWith(id: 12, name: "My name")
  /// ````
  AddBoardState call({
    BoardName? boardName,
    String? errorMessage,
    FormzStatus? status,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAddBoardState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAddBoardState.copyWith.fieldName(...)`
class _$AddBoardStateCWProxyImpl implements _$AddBoardStateCWProxy {
  final AddBoardState _value;

  const _$AddBoardStateCWProxyImpl(this._value);

  @override
  AddBoardState boardName(BoardName boardName) => this(boardName: boardName);

  @override
  AddBoardState errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  AddBoardState status(FormzStatus status) => this(status: status);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AddBoardState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AddBoardState(...).copyWith(id: 12, name: "My name")
  /// ````
  AddBoardState call({
    Object? boardName = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return AddBoardState(
      boardName: boardName == const $CopyWithPlaceholder() || boardName == null
          ? _value.boardName
          // ignore: cast_nullable_to_non_nullable
          : boardName as BoardName,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as FormzStatus,
    );
  }
}

extension $AddBoardStateCopyWith on AddBoardState {
  /// Returns a callable class that can be used as follows: `instanceOfAddBoardState.copyWith(...)` or like so:`instanceOfAddBoardState.copyWith.fieldName(...)`.
  _$AddBoardStateCWProxy get copyWith => _$AddBoardStateCWProxyImpl(this);
}
