// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FunctionStateCWProxy {
  FunctionState children(List<ComponentResponse> children);

  FunctionState name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionState call({
    List<ComponentResponse>? children,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFunctionState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFunctionState.copyWith.fieldName(...)`
class _$FunctionStateCWProxyImpl implements _$FunctionStateCWProxy {
  final FunctionState _value;

  const _$FunctionStateCWProxyImpl(this._value);

  @override
  FunctionState children(List<ComponentResponse> children) =>
      this(children: children);

  @override
  FunctionState name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionState call({
    Object? children = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return FunctionState(
      children: children == const $CopyWithPlaceholder() || children == null
          ? _value.children
          // ignore: cast_nullable_to_non_nullable
          : children as List<ComponentResponse>,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $FunctionStateCopyWith on FunctionState {
  /// Returns a callable class that can be used as follows: `instanceOfFunctionState.copyWith(...)` or like so:`instanceOfFunctionState.copyWith.fieldName(...)`.
  _$FunctionStateCWProxy get copyWith => _$FunctionStateCWProxyImpl(this);
}
