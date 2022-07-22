import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/moveable/movable_widget/moveable_widget.dart';

typedef ChildBuilder = Widget Function(BuildContext context,
    ComponentResponse component, MoveableWidgetState componentState);

typedef MoveableBuilder = Widget Function(bool dragging);

class MoveableWidget extends StatelessWidget {
  const MoveableWidget({super.key, required this.child, required this.handle});

  final MoveableBuilder? child;
  final MoveableBuilder? handle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoveableWidgetBloc(centerX: 750, centerY: 100),
      child: BlocBuilder<MoveableWidgetBloc, MoveableWidgetState>(
        builder: (context, state) {
          return Positioned(
            top: state.y,
            left: state.x,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onPanStart: (e) => context
                      .read<MoveableWidgetBloc>()
                      .add(StartedDraggingComponent()),
                  onPanEnd: (e) => context
                      .read<MoveableWidgetBloc>()
                      .add(EndedDraggingComponent()),
                  onPanUpdate: (e) => context
                      .read<MoveableWidgetBloc>()
                      .add(DraggedComponent(e.delta.dx, e.delta.dy)),
                  child: handle?.call(state.dragging),
                ),
                if(child != null) child!.call(state.dragging),
              ],
            ),
          );
        },
      ),
    );
  }
}
