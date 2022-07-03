import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/widgets/components/component_factory.dart';
import 'package:qilletni_frontend/board_view/widgets/components/function/function_widget.dart';
import 'package:reorderables/reorderables.dart';

class FunctionWidget extends StatelessWidget {
  FunctionWidget({required ComponentResponse functionComponent,
    required this.boardKey,
    required this.width,
    this.dragging = false,
    super.key})
      : _functionComponent = functionComponent,
        componentFactory =
        ComponentFactory(boardKey: boardKey, component: functionComponent);

  final ComponentFactory componentFactory;
  final ComponentResponse _functionComponent;
  final bool dragging;
  final double width;
  final GlobalKey boardKey;

  final double _padding = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: dragging ? Colors.purple[200] : Colors.purple[300],
      child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: BlocProvider(
            create: (context) =>
                FunctionBloc(
                    functionProcessor: context.read<FunctionProcessor>(),
                    functionComponent: _functionComponent),
            child: BlocBuilder<FunctionBloc, FunctionState>(
              builder: (context, state) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: ReorderableColumn(
                    buildDraggableFeedback: (context, constraints, child) =>
                        buildDraggableFeedback(
                            context, constraints, child),
                    key: Key('${_functionComponent.base.componentId}_column'),
                    needsLongPressDraggable: false,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var child in state.children)
                        Padding(
                          key: Key('${child.base.componentId}_pad'),
                          padding: const EdgeInsets.all(4),
                          child: componentFactory.createInspectableWidget(
                              child, dragging, width - (_padding * 2)),
                        )
                    ],
                    onReorder: (int oldIndex, int newIndex) {
                      context
                          .read<FunctionBloc>()
                          .add(ChildrenReordered(oldIndex, newIndex));
                    },
                  ),
                );
              },
            ),
          )),
    );
  }

  Widget buildDraggableFeedback(BuildContext context,
      BoxConstraints constraints, Widget child) {
    return Transform(
      transform: Matrix4.rotationZ(0),
      alignment: FractionalOffset.topLeft,
      child: Material(
        elevation: 6.0,
        color: Colors.transparent,
        borderRadius: BorderRadius.zero,
        child: ConstrainedBox(constraints: constraints, child: child),
      ),
    );
  }
}
