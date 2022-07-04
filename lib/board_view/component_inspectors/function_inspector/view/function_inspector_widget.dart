import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_inspectors/function_inspector/function_inspector.dart';
import 'package:reorderables/reorderables.dart';

class FunctionInspectorWidget extends StatelessWidget {
  const FunctionInspectorWidget({required this.component, super.key});

  final ComponentResponse component;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FunctionInspectorBloc(
        component: component,
        componentRequestRepository: context.read<ComponentRequestRepository>(),
        functionProcessor: context.read<FunctionProcessor>(),
      ),
      child: BlocBuilder<FunctionInspectorBloc, FunctionInspectorState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'Function ${component.functionComponent.name}',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ReorderableColumn(
                buildDraggableFeedback: (context, constraints, child) =>
                    buildDraggableFeedback(context, constraints, child),
                key: Key('${component.base.componentId}_inspector_column'),
                needsLongPressDraggable: false,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var child in state.children)
                    Padding(
                      key: Key('${child.base.componentId}_pad_other'),
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${child.whichContent().name} component\n${child.song.song.name}'),
                          ),
                      )
                    )
                ],
                onReorder: (int oldIndex, int newIndex) {
                  context
                      .read<FunctionInspectorBloc>()
                      .add(ChildrenReordered(oldIndex, newIndex));
                },
              )
            ],
          );
        },
      ),
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
