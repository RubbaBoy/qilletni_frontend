import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/board_view/widgets/components/function/function_widget.dart';
import 'package:qilletni_frontend/board_view/widgets/components/inspectable_widget.dart';
import 'package:qilletni_frontend/board_view/widgets/components/song/song_widget.dart';

class ComponentFactory {
  ComponentFactory({required this.boardKey, required this.component});

  final GlobalKey boardKey;
  final ComponentResponse component;

  final Color _color = Colors.blue;
  final Color? _draggingColor = Colors.blue[200];

  Widget createInspectableWidget(
      ComponentResponse component, bool dragging, double width) {
    return InspectableWidget(
        component: component, child: createWidget(component, dragging, width));
  }

  Widget createWidget(
      ComponentResponse component, bool dragging, double width) {
    return {
      ComponentResponse_Content.song: _renderSong,
      ComponentResponse_Content.forLoop: _renderDefault,
      ComponentResponse_Content.functionComponent: _renderFunction,
      ComponentResponse_Content.rawCollection: _renderDefault,
      ComponentResponse_Content.lastFmCollection: _renderDefault,
      ComponentResponse_Content.spotifyCollection: _renderDefault,
      ComponentResponse_Content.notSet: (_) => throw 'Not implemented',
    }[component.whichContent()]
        ?.call(component, dragging, width);
  }

  Widget? createHandle(
      ComponentResponse component, bool dragging, double width) {
    Widget? handle = {
      ComponentResponse_Content.functionComponent: _renderFunctionHandle,
    }[component.whichContent()]
        ?.call(component, dragging, width);

    if (handle == null) throw 'Handle implementation not found for component type: ${component.whichContent()}';

    return InspectableWidget(component: component, child: handle);
  }

  Widget _renderSong(ComponentResponse component, bool dragging, double width) {
    return SongWidget(
        key: Key(component.base.componentId),
        songComponent: component,
        width: width,
        dragging: dragging);
  }

  Widget _renderFunction(
      ComponentResponse component, bool dragging, double width) {
    return FunctionWidget(
        key: Key(component.base.componentId),
        functionComponent: component,
        boardKey: boardKey,
        width: width,
        dragging: dragging);
  }

  Widget _renderFunctionHandle(
      ComponentResponse component, bool dragging, double width) {
    return Container(
      width: 100,
      height: 25,
      color: dragging ? Colors.purple[200] : Colors.purple[300],
      child: Center(
        child: Text(
          component.functionComponent.name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _renderDefault(ComponentResponse component, bool dragging) {
    return Container(
      key: Key(component.base.componentId),
      width: 150,
      height: 150,
      color: dragging ? _draggingColor : _color,
    );
  }
}
