// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_widget_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ComponentWidgetStateCWProxy {
  ComponentWidgetState dragging(bool dragging);

  ComponentWidgetState x(double x);

  ComponentWidgetState y(double y);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ComponentWidgetState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ComponentWidgetState(...).copyWith(id: 12, name: "My name")
  /// ````
  ComponentWidgetState call({
    bool? dragging,
    double? x,
    double? y,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfComponentWidgetState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfComponentWidgetState.copyWith.fieldName(...)`
class _$ComponentWidgetStateCWProxyImpl
    implements _$ComponentWidgetStateCWProxy {
  final ComponentWidgetState _value;

  const _$ComponentWidgetStateCWProxyImpl(this._value);

  @override
  ComponentWidgetState dragging(bool dragging) => this(dragging: dragging);

  @override
  ComponentWidgetState x(double x) => this(x: x);

  @override
  ComponentWidgetState y(double y) => this(y: y);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ComponentWidgetState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ComponentWidgetState(...).copyWith(id: 12, name: "My name")
  /// ````
  ComponentWidgetState call({
    Object? dragging = const $CopyWithPlaceholder(),
    Object? x = const $CopyWithPlaceholder(),
    Object? y = const $CopyWithPlaceholder(),
  }) {
    return ComponentWidgetState(
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

extension $ComponentWidgetStateCopyWith on ComponentWidgetState {
  /// Returns a callable class that can be used as follows: `instanceOfComponentWidgetState.copyWith(...)` or like so:`instanceOfComponentWidgetState.copyWith.fieldName(...)`.
  _$ComponentWidgetStateCWProxy get copyWith =>
      _$ComponentWidgetStateCWProxyImpl(this);
}
