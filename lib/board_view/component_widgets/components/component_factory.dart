import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/board_component_manager.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/function/function_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/inspectable_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/song/song_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/handles/function_handle/function_handle_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/moveable/movable_widget/moveable_widget.dart';

typedef WidgetCreator = DisplayWidget Function(
    String componentId, double width);

class ComponentFactory {
  ComponentFactory(
      {required this.boardKey, required this.boardComponentManager});

  final GlobalKey boardKey;
  final BoardComponentManager boardComponentManager;

  final Color _color = Colors.blue;
  final Color? _draggingColor = Colors.blue[200];

  /// Creates a [DisplayWidget] which can be converted to a [Widget] and
  /// displayed via [DisplayWidget#display()].
  Widget createDisplayWidget(
      ComponentResponse component, double width) {
    var displayWidget = <ComponentResponse_Content, WidgetCreator>{
      ComponentResponse_Content.song: _renderSong,
      ComponentResponse_Content.forLoop: _renderDefault,
      ComponentResponse_Content.functionComponent: _renderFunction,
      ComponentResponse_Content.rawCollection: _renderDefault,
      ComponentResponse_Content.lastFmCollection: _renderDefault,
      ComponentResponse_Content.spotifyCollection: _renderDefault,
      ComponentResponse_Content.notSet: (i1, i2) =>
          throw 'No component set',
    }[component.whichContent()]!
        .call(component.base.componentId, width);

    return displayWidget.display();
  }

  DisplayWidget _renderSong(String componentId, double width) {
    return DisplayWidget(
      child: (dragging) => SongWidget(
        key: Key(componentId),
        componentId: componentId,
        width: width,
        dragging: dragging,
        boardComponentManager: boardComponentManager,
      ),
    );
  }

  DisplayWidget _renderFunction(
      String componentId, double width) {
    return DisplayWidget(
      child: (dragging) => FunctionWidget(
        key: Key(componentId),
        componentId: componentId,
        boardKey: boardKey,
        width: width,
        dragging: dragging,
        boardComponentManager: boardComponentManager,
      ),
      handle: (dragging) => FunctionHandleWidget(
        key: Key(componentId),
        componentId: componentId,
        dragging: dragging,
        boardComponentManager: boardComponentManager,
      )
    );
  }

  DisplayWidget _renderDefault(String componentId, width) {
    return DisplayWidget(
      child: (dragging) => Container(
        key: Key(componentId),
        width: 150,
        height: 150,
        color: dragging ? _draggingColor : _color,
      ),
    );
  }
}

class DisplayWidget {
  DisplayWidget({this.child, this.handle})
      : assert(child != null || handle != null,
            'At least a child or handle should be defined');

  MoveableBuilder? child;
  MoveableBuilder? handle;

  /// Displays the [DisplayWidget], using the handle if applicable.
  Widget display() {
    if (handle != null) {
      return MoveableWidget(
        handle: handle,
        child: child,
      );
    }

    return child!(false);
  }
}
