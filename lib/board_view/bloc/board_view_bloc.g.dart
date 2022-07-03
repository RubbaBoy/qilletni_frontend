// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_view_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BoardViewStateCWProxy {
  BoardViewState components(List<ComponentResponse> components);

  BoardViewState inspectingComponent(ComponentResponse? inspectingComponent);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardViewState call({
    List<ComponentResponse>? components,
    ComponentResponse? inspectingComponent,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBoardViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBoardViewState.copyWith.fieldName(...)`
class _$BoardViewStateCWProxyImpl implements _$BoardViewStateCWProxy {
  final BoardViewState _value;

  const _$BoardViewStateCWProxyImpl(this._value);

  @override
  BoardViewState components(List<ComponentResponse> components) =>
      this(components: components);

  @override
  BoardViewState inspectingComponent(ComponentResponse? inspectingComponent) =>
      this(inspectingComponent: inspectingComponent);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BoardViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BoardViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  BoardViewState call({
    Object? components = const $CopyWithPlaceholder(),
    Object? inspectingComponent = const $CopyWithPlaceholder(),
  }) {
    return BoardViewState(
      components:
          components == const $CopyWithPlaceholder() || components == null
              ? _value.components
              // ignore: cast_nullable_to_non_nullable
              : components as List<ComponentResponse>,
      inspectingComponent: inspectingComponent == const $CopyWithPlaceholder()
          ? _value.inspectingComponent
          // ignore: cast_nullable_to_non_nullable
          : inspectingComponent as ComponentResponse?,
    );
  }
}

extension $BoardViewStateCopyWith on BoardViewState {
  /// Returns a callable class that can be used as follows: `instanceOfBoardViewState.copyWith(...)` or like so:`instanceOfBoardViewState.copyWith.fieldName(...)`.
  _$BoardViewStateCWProxy get copyWith => _$BoardViewStateCWProxyImpl(this);
}
