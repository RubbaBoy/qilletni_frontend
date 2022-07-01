import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/widgets/component_widget/component_widget.dart';

class ComponentWidget extends StatelessWidget {
  const ComponentWidget(
      {super.key,
      required this.boardKey,
      required this.component,
      required this.color,
      required this.draggingColor});

  final ComponentResponse component;
  final Color color;
  final Color draggingColor;

  final GlobalKey boardKey;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        // var width = 500, height = 500;
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        return ComponentWidgetBloc(component: component, centerX: width / 2, centerY: height / 2);
      },
      child: BlocBuilder<ComponentWidgetBloc, ComponentWidgetState>(
        builder: (context, state) {
          return Positioned(
            top: state.y,
            left: state.x,
            child: GestureDetector(
              onPanStart: (e) => BlocProvider.of<ComponentWidgetBloc>(context)
                  .add(StartedDraggingComponent()),
              onPanEnd: (e) => BlocProvider.of<ComponentWidgetBloc>(context)
                  .add(EndedDraggingComponent()),
              onPanUpdate: (e) {
                var componentPosition =
                    (context.findRenderObject() as RenderBox)
                        .globalToLocal(e.globalPosition);
                var local =
                    (boardKey.currentContext?.findRenderObject() as RenderBox)
                        .globalToLocal(e.globalPosition);

                BlocProvider.of<ComponentWidgetBloc>(context)
                    .add(DraggedComponent(e.delta.dx, e.delta.dy));
              },
              child: Container(
                width: 150,
                height: 150,
                color: state.dragging ? draggingColor : color,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget? renderWidget(ComponentWidgetState state, ComponentResponse component) {
    return {
      ComponentResponse_Content.song: _renderSong,
      ComponentResponse_Content.forLoop: _renderForLoop,
      ComponentResponse_Content.functionComponent: _renderFunction,
      ComponentResponse_Content.rawCollection: _renderRawCollection,
      ComponentResponse_Content.lastFmCollection: _renderLastFm,
      ComponentResponse_Content.spotifyCollection: _renderSpotify,
      ComponentResponse_Content.notSet: (_) => null,
    }[component.whichContent()]?.call(state, component);
  }

  Widget _renderSong(ComponentWidgetState state, ComponentResponse component) {
    final song = component.song;
    return Container(
      width: 150,
      height: 150,
      color: color,
      child: Text('Song\n${song.song.name}'),
    );
  }

  Widget _renderForLoop(ComponentWidgetState state, ComponentResponse component) {
    return Container(
      width: 150,
      height: 150,
      color: state.dragging ? draggingColor : color,
    );
  }

  Widget _renderFunction(ComponentWidgetState state, ComponentResponse component) {
    return Container(
      width: 150,
      height: 150,
      color: state.dragging ? draggingColor : color,
    );
  }

  Widget _renderRawCollection(ComponentWidgetState state, ComponentResponse component) {
    return Container(
      width: 150,
      height: 150,
      color: state.dragging ? draggingColor : color,
    );
  }

  Widget _renderLastFm(ComponentWidgetState state, ComponentResponse component) {
    return Container(
      width: 150,
      height: 150,
      color: state.dragging ? draggingColor : color,
    );
  }

  Widget _renderSpotify(ComponentWidgetState state, ComponentResponse component) {
    return Container(
      width: 150,
      height: 150,
      color: state.dragging ? draggingColor : color,
    );
  }
}
