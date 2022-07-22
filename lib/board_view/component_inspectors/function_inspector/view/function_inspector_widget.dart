import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_inspectors/function_inspector/function_inspector.dart';
import 'package:reorderables/reorderables.dart';

class FunctionInspectorWidget extends StatelessWidget {
  const FunctionInspectorWidget(
      {required this.component,
      required this.boardComponentManager,
      super.key});

  static const childWidth = 200.0;

  final ComponentResponse component;
  final BoardComponentManager boardComponentManager;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FunctionInspectorBloc(
        componentId: component.base.componentId,
        boardComponentManager: boardComponentManager,
        functionProcessor: context.read<FunctionProcessor>(),
      ),
      child: BlocBuilder<FunctionInspectorBloc, FunctionInspectorState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: SizedBox(
                  width: childWidth,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: TextField(
                              decoration: state.editingName ? InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Function name',
                                suffixIcon: IconButton(
                                  onPressed: () => context
                                      .read<FunctionInspectorBloc>()
                                      .add(NameSubmitted()),
                                  icon: const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ),
                              ) : null,
                              // 'Function ${component.functionComponent.name}',
                              controller: state.nameController,
                              enabled: state.editingName,
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              onSubmitted: (_) => context
                                  .read<FunctionInspectorBloc>()
                                  .add(NameSubmitted()),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () => context
                                  .read<FunctionInspectorBloc>()
                                  .add(state.editingName
                                      ? NameCancelledEdit()
                                      : NameStartedEdit()),
                              icon: state.editingName
                                  ? const Icon(Icons.clear)
                                  : const Icon(Icons.edit)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ReorderableColumn(
                buildDraggableFeedback: (context, constraints, child) =>
                    buildDraggableFeedback(context, constraints, child),
                key: Key('${component.base.componentId}_inspector_column'),
                scrollController: state.scrollController,
                needsLongPressDraggable: false,
                crossAxisAlignment: CrossAxisAlignment.start,
                onReorder: (int oldIndex, int newIndex) {
                  context
                      .read<FunctionInspectorBloc>()
                      .add(ChildrenReordered(oldIndex, newIndex));
                },
                footer: Padding(
                  key: const Key('footer_pad_other'),
                  padding: const EdgeInsets.all(4),
                  child: SizedBox(
                    width: childWidth,
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        print('Add');
                      },
                    ),
                  ),
                ),
                children: [
                  for (var child in state.component.children)
                    Padding(
                      key: Key('${child.base.componentId}_pad_other'),
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        color: Colors.red,
                        width: childWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              '${child.whichContent().name} component\n${child.song.song.name}'),
                        ),
                      ),
                    ),
                ],
              )
            ],
          );
        },
      ),
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
