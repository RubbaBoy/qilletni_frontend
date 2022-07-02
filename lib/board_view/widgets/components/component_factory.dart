import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/board_view/widgets/components/song/song_widget.dart';
import 'package:qilletni_frontend/board_view/widgets/movable_widget/moveable_widget.dart';

class ComponentFactory {
  ComponentFactory({required this.boardKey, required this.component});

  final GlobalKey boardKey;
  final ComponentResponse component;

  final Color _color = Colors.blue;
  final Color? _draggingColor = Colors.blue[200];

  Widget? createWidget(
      ComponentResponse component, MoveableWidgetState widgetState) {
    return {
      ComponentResponse_Content.song: _renderSong,
      ComponentResponse_Content.forLoop: _renderDefault,
      ComponentResponse_Content.functionComponent: _renderDefault,
      ComponentResponse_Content.rawCollection: _renderDefault,
      ComponentResponse_Content.lastFmCollection: _renderDefault,
      ComponentResponse_Content.spotifyCollection: _renderDefault,
      ComponentResponse_Content.notSet: (_) => null,
    }[component.whichContent()]
        ?.call(component, widgetState);
  }

  Widget _renderSong(
      ComponentResponse response, MoveableWidgetState widgetState) {
    return SongWidget(songComponent: component, dragging: widgetState.dragging);
  }

  Widget _renderDefault(
      ComponentResponse component, MoveableWidgetState widgetState) {
    return Container(
      width: 150,
      height: 150,
      color: widgetState.dragging ? _draggingColor : _color,
    );
  }
}
