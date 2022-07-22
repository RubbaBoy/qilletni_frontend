import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';
import 'package:qilletni_frontend/board_view/component_inspectors/inspinspector_widget_factory.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/component_factory.dart';
import 'package:qilletni_frontend/board_view/component_widgets/moveable/movable_widget/moveable_widget.dart';

class BoardView extends StatelessWidget {
  BoardView({required this.boardComponentManager, super.key})
      : board = boardComponentManager.board,
        boardKey = GlobalKey(debugLabel: 'board_key'),
        inspectorWidgetFactory = InspectorWidgetFactory(
            boardComponentManager: boardComponentManager) {
    componentFactory = ComponentFactory(
        boardKey: boardKey, boardComponentManager: boardComponentManager);
  }

  static Future<Route> route(
      {required Board board,
      required ComponentRepository componentRepository,
      required ComponentRequestRepository componentRequestRepository}) async {
    final boardComponentManager = await BoardComponentManager.create(
        board: board,
        componentRepository: componentRepository,
        componentRequestRepository: componentRequestRepository);
    return MaterialPageRoute<void>(
        builder: (_) =>
            BoardView(boardComponentManager: boardComponentManager));
  }

  final Board board;
  final BoardComponentManager boardComponentManager;
  late final ComponentFactory componentFactory;
  final InspectorWidgetFactory inspectorWidgetFactory;
  final GlobalKey boardKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Board ${board.name}')),
      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              context.read<BoardViewBloc>().add(const ComponentWidgetAdded())),
      body: BlocProvider<BoardViewBloc>(
        create: (context) => BoardViewBloc(
          board: board,
          boardKey: boardKey,
          requestRepository: context.read<ComponentRequestRepository>(),
        ),
        child: BlocBuilder<BoardViewBloc, BoardViewState>(
          builder: (context, state) {
            return Stack(
              key: boardKey,
              fit: StackFit.expand,
              children: [
                for (var component in state.components)
                  componentFactory.createDisplayWidget(component, 200),
                if (state.inspectingComponent != null)
                  _createSidebar(context, state.inspectingComponent!),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _createSidebar(BuildContext context, ComponentResponse component) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.centerRight,
        child: Drawer(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(width: kToolbarHeight),
                    child: CloseButton(
                      onPressed: () {
                        context
                            .read<BoardViewBloc>()
                            .add(const InspectViewClosed());
                      },
                    ),
                  ),
                ],
              ),
              inspectorWidgetFactory.createInspectorWidget(component),
            ],
          ),
        ),
      ),
    );
  }
}
