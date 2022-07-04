// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_inspector_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FunctionInspectorStateCWProxy {
  FunctionInspectorState children(List<ComponentResponse> children);

  FunctionInspectorState editingName(bool editingName);

  FunctionInspectorState name(String name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionInspectorState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionInspectorState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionInspectorState call({
    List<ComponentResponse>? children,
    bool? editingName,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFunctionInspectorState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFunctionInspectorState.copyWith.fieldName(...)`
class _$FunctionInspectorStateCWProxyImpl
    implements _$FunctionInspectorStateCWProxy {
  final FunctionInspectorState _value;

  const _$FunctionInspectorStateCWProxyImpl(this._value);

  @override
  FunctionInspectorState children(List<ComponentResponse> children) =>
      this(children: children);

  @override
  FunctionInspectorState editingName(bool editingName) =>
      this(editingName: editingName);

  @override
  FunctionInspectorState name(String name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionInspectorState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionInspectorState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionInspectorState call({
    Object? children = const $CopyWithPlaceholder(),
    Object? editingName = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return FunctionInspectorState(
      children: children == const $CopyWithPlaceholder() || children == null
          ? _value.children
          // ignore: cast_nullable_to_non_nullable
          : children as List<ComponentResponse>,
      editingName:
          editingName == const $CopyWithPlaceholder() || editingName == null
              ? _value.editingName
              // ignore: cast_nullable_to_non_nullable
              : editingName as bool,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $FunctionInspectorStateCopyWith on FunctionInspectorState {
  /// Returns a callable class that can be used as follows: `instanceOfFunctionInspectorState.copyWith(...)` or like so:`instanceOfFunctionInspectorState.copyWith.fieldName(...)`.
  _$FunctionInspectorStateCWProxy get copyWith =>
      _$FunctionInspectorStateCWProxyImpl(this);
}
