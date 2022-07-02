import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/widgets/components/component_factory.dart';
import 'package:qilletni_frontend/board_view/widgets/movable_widget/moveable_widget.dart';

typedef ChildBuilder = Widget Function(BuildContext context,
    ComponentResponse component, MoveableWidgetState componentState);

class MoveableWidget extends StatelessWidget {
  MoveableWidget({super.key, required this.boardKey, required this.component})
      : componentFactory =
            ComponentFactory(boardKey: boardKey, component: component);

  final ComponentFactory componentFactory;
  final ComponentResponse component;

  final GlobalKey boardKey;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        return MoveableWidgetBloc(
            component: component, centerX: width / 2, centerY: height / 2);
      },
      child: BlocBuilder<MoveableWidgetBloc, MoveableWidgetState>(
        builder: (context, state) {
          return Positioned(
            top: state.y,
            left: state.x,
            child: GestureDetector(
              onPanStart: (e) => context
                  .read<MoveableWidgetBloc>()
                  .add(StartedDraggingComponent()),
              onPanEnd: (e) => context
                  .read<MoveableWidgetBloc>()
                  .add(EndedDraggingComponent()),
              onPanUpdate: (e) {
                // var componentPosition =
                //     (context.findRenderObject() as RenderBox)
                //         .globalToLocal(e.globalPosition);
                // var local =
                //     (boardKey.currentContext?.findRenderObject() as RenderBox)
                //         .globalToLocal(e.globalPosition);

                context
                    .read<MoveableWidgetBloc>()
                    .add(DraggedComponent(e.delta.dx, e.delta.dy));
              },
              child: componentFactory.createWidget(component, state),
            ),
          );
        },
      ),
    );
  }
}