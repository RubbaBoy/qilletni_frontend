import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/src/processors/board_component_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/component_factory.dart';
import 'package:qilletni_frontend/board_view/component_widgets/movable_widget/moveable_widget.dart';

typedef ChildBuilder = Widget Function(BuildContext context,
    ComponentResponse component, MoveableWidgetState componentState);

class MoveableWidget extends StatelessWidget {
  MoveableWidget({super.key, required this.boardKey, required this.component, required this.boardComponentManager})
      : componentFactory =
            ComponentFactory(boardKey: boardKey, boardComponentManager: boardComponentManager);

  final ComponentFactory componentFactory;
  final ComponentResponse component;
  final BoardComponentManager boardComponentManager;

  final GlobalKey boardKey;

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
              children: [
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
                  child: componentFactory.createHandle(component, state.dragging, 200),
                ),
                componentFactory.createWidget(component, state.dragging, 200),
              ],
            ),
          );
        },
      ),
    );
  }
}
