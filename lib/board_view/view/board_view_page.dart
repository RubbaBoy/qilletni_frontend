import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';
import 'package:qilletni_frontend/board_view/widgets/movable_widget/moveable_widget.dart';

class BoardView extends StatelessWidget {
  BoardView({required this.board, super.key});

  static Route route({required Board board}) {
    return MaterialPageRoute<void>(builder: (_) => BoardView(board: board));
  }

  final Board board;
  final GlobalKey boardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Board ${board.name}')),
      floatingActionButton: FloatingActionButton(
          onPressed: () =>
              context.read<BoardViewBloc>().add(ComponentWidgetAdded())),
      body: BlocProvider(
        create: (context) => BoardViewBloc(
          structureRepository: context.read<StructureRepository>(),
          board: board,
          boardKey: boardKey,
        ),
        child: BlocBuilder<BoardViewBloc, BoardViewState>(
          builder: (context, state) {
            return Stack(
              key: boardKey,
              fit: StackFit.expand,
              children: [
                for (var component in state.components)
                  MoveableWidget(boardKey: boardKey, component: component),
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
                    constraints: const BoxConstraints.tightFor(width: kToolbarHeight),
                    child: CloseButton(
                      onPressed: () {
                        context.read<BoardViewBloc>().add(const InspectViewClosed());
                      },
                    ),
                  ),
                ],
              ),
              Text('Inspecting component ${component.base.componentId}'),
              Text('Here'),
            ],
          ),
        ),
      ),
    );
  }

/*
  Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Bruh')),
            Text('More'),
            Text('Here'),
          ],
        ),
      ),
   */
}
