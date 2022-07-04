// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moveable_widget_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MoveableWidgetStateCWProxy {
  MoveableWidgetState dragging(bool dragging);

  MoveableWidgetState x(double x);

  MoveableWidgetState y(double y);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MoveableWidgetState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MoveableWidgetState(...).copyWith(id: 12, name: "My name")
  /// ````
  MoveableWidgetState call({
    bool? dragging,
    double? x,
    double? y,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMoveableWidgetState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMoveableWidgetState.copyWith.fieldName(...)`
class _$MoveableWidgetStateCWProxyImpl implements _$MoveableWidgetStateCWProxy {
  final MoveableWidgetState _value;

  const _$MoveableWidgetStateCWProxyImpl(this._value);

  @override
  MoveableWidgetState dragging(bool dragging) => this(dragging: dragging);

  @override
  MoveableWidgetState x(double x) => this(x: x);

  @override
  MoveableWidgetState y(double y) => this(y: y);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MoveableWidgetState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MoveableWidgetState(...).copyWith(id: 12, name: "My name")
  /// ````
  MoveableWidgetState call({
    Object? dragging = const $CopyWithPlaceholder(),
    Object? x = const $CopyWithPlaceholder(),
    Object? y = const $CopyWithPlaceholder(),
  }) {
    return MoveableWidgetState(
      dragging: dragging == const $CopyWithPlaceholder() || dragging == null
          ? _value.dragging
          // ignore: cast_nullable_to_non_nullable
          : dragging as bool,
      x: x == const $CopyWithPlaceholder() || x == null
          ? _value.x
          // ignore: cast_nullable_to_non_nullable
          : x as double,
      y: y == const $CopyWithPlaceholder() || y == null
          ? _value.y
          // ignore: cast_nullable_to_non_nullable
          : y as double,
    );
  }
}

extension $MoveableWidgetStateCopyWith on MoveableWidgetState {
  /// Returns a callable class that can be used as follows: `instanceOfMoveableWidgetState.copyWith(...)` or like so:`instanceOfMoveableWidgetState.copyWith.fieldName(...)`.
  _$MoveableWidgetStateCWProxy get copyWith =>
      _$MoveableWidgetStateCWProxyImpl(this);
}
