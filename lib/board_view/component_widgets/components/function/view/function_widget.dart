import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/component_factory.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/function/function_widget.dart';
import 'package:reorderables/reorderables.dart';

class FunctionWidget extends StatefulWidget {
  const FunctionWidget(
      {required this.componentId,
      required this.boardKey,
      required this.width,
      required this.boardComponentManager,
      this.dragging = false,
      super.key});

  final String componentId;
  final bool dragging;
  final double width;
  final BoardComponentManager boardComponentManager;
  final GlobalKey boardKey;

  @override
  State<FunctionWidget> createState() => _FunctionWidgetState(
      componentId: componentId,
      boardKey: boardKey,
      width: width,
      boardComponentManager: boardComponentManager,
      dragging: dragging);
}

class _FunctionWidgetState extends State<FunctionWidget> {
  _FunctionWidgetState(
      {required this.componentId,
      required this.boardKey,
      required this.width,
      required this.boardComponentManager,
      this.dragging = false})
      : componentFactory = ComponentFactory(boardKey: boardKey, boardComponentManager: boardComponentManager);

  final ComponentFactory componentFactory;
  final BoardComponentManager boardComponentManager;
  final String componentId;
  final bool dragging;
  final double width;
  final GlobalKey boardKey;

  final double _padding = 4;

  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: dragging ? Colors.purple[200] : Colors.purple[300],
      child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: BlocProvider(
            create: (context) => FunctionBloc(
                componentId: componentId,
                boardComponentManager: boardComponentManager,
                functionProcessor: context.read<FunctionProcessor>(),
            ),
            child: BlocBuilder<FunctionBloc, FunctionState>(
              builder: (context, state) {
                return ReorderableColumn(
                  scrollController: _scrollController,
                  buildDraggableFeedback: (context, constraints, child) =>
                      buildDraggableFeedback(context, constraints, child),
                  key: Key('${componentId}_column'),
                  needsLongPressDraggable: false,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var child in state.component.children)
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
                );
              },
            ),
          )),
    );
  }

  Widget buildDraggableFeedback(
      BuildContext context, BoxConstraints constraints, Widget child) {
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
