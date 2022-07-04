import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/board_view/component_inspectors/function_inspector/function_inspector.dart';

class InspectorWidgetFactory {
  Widget createInspectorWidget(ComponentResponse component) {
    return ({
      ComponentResponse_Content.song: _renderSongInspector,
      ComponentResponse_Content.forLoop: _renderDefault,
      ComponentResponse_Content.functionComponent: _renderFunction,
      ComponentResponse_Content.rawCollection: _renderDefault,
      ComponentResponse_Content.lastFmCollection: _renderDefault,
      ComponentResponse_Content.spotifyCollection: _renderDefault,
      ComponentResponse_Content.notSet: (_) => throw 'No component set',
    }[component.whichContent()]
        ?.call(component))!;
  }

  Widget _renderSongInspector(ComponentResponse component) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
      child: const Text('Song'),
    );
  }

  Widget _renderFunction(ComponentResponse component) {
    return FunctionInspectorWidget(component: component);
  }

  Widget _renderDefault(ComponentResponse component) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
      child: const Text('Default inspector'),
    );
  }
}
