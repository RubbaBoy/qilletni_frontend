// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'function_inspector_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FunctionInspectorStateCWProxy {
  FunctionInspectorState componentResponse(ComponentResponse componentResponse);

  FunctionInspectorState editingName(bool editingName);

  FunctionInspectorState nameController(TextEditingController nameController);

  FunctionInspectorState scrollController(ScrollController scrollController);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionInspectorState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionInspectorState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionInspectorState call({
    ComponentResponse? componentResponse,
    bool? editingName,
    TextEditingController? nameController,
    ScrollController? scrollController,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFunctionInspectorState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFunctionInspectorState.copyWith.fieldName(...)`
class _$FunctionInspectorStateCWProxyImpl
    implements _$FunctionInspectorStateCWProxy {
  final FunctionInspectorState _value;

  const _$FunctionInspectorStateCWProxyImpl(this._value);

  @override
  FunctionInspectorState componentResponse(
          ComponentResponse componentResponse) =>
      this(componentResponse: componentResponse);

  @override
  FunctionInspectorState editingName(bool editingName) =>
      this(editingName: editingName);

  @override
  FunctionInspectorState nameController(TextEditingController nameController) =>
      this(nameController: nameController);

  @override
  FunctionInspectorState scrollController(ScrollController scrollController) =>
      this(scrollController: scrollController);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FunctionInspectorState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FunctionInspectorState(...).copyWith(id: 12, name: "My name")
  /// ````
  FunctionInspectorState call({
    Object? componentResponse = const $CopyWithPlaceholder(),
    Object? editingName = const $CopyWithPlaceholder(),
    Object? nameController = const $CopyWithPlaceholder(),
    Object? scrollController = const $CopyWithPlaceholder(),
  }) {
    return FunctionInspectorState(
      componentResponse: componentResponse == const $CopyWithPlaceholder() ||
              componentResponse == null
          ? _value.componentResponse
          // ignore: cast_nullable_to_non_nullable
          : componentResponse as ComponentResponse,
      editingName:
          editingName == const $CopyWithPlaceholder() || editingName == null
              ? _value.editingName
              // ignore: cast_nullable_to_non_nullable
              : editingName as bool,
      nameController: nameController == const $CopyWithPlaceholder() ||
              nameController == null
          ? _value.nameController
          // ignore: cast_nullable_to_non_nullable
          : nameController as TextEditingController,
      scrollController: scrollController == const $CopyWithPlaceholder() ||
              scrollController == null
          ? _value.scrollController
          // ignore: cast_nullable_to_non_nullable
          : scrollController as ScrollController,
    );
  }
}

extension $FunctionInspectorStateCopyWith on FunctionInspectorState {
  /// Returns a callable class that can be used as follows: `instanceOfFunctionInspectorState.copyWith(...)` or like so:`instanceOfFunctionInspectorState.copyWith.fieldName(...)`.
  _$FunctionInspectorStateCWProxy get copyWith =>
      _$FunctionInspectorStateCWProxyImpl(this);
}
