import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';
import 'package:qilletni_frontend/board_view/widgets/component_widget/component_widget.dart';

class BoardView extends StatelessWidget {
  BoardView({required this.board, super.key});

  static Route route({required Board board}) {
    return MaterialPageRoute<void>(builder: (_) => BoardView(board: board));
  }

  final Board board;
  final GlobalKey boardKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoardViewBloc(boardKey: boardKey),
      child: BlocBuilder<BoardViewBloc, BoardViewState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text('Board ${board.name}')),
            floatingActionButton: FloatingActionButton(
                onPressed: () => context.read<BoardViewBloc>()
                    .add(ComponentWidgetAdded())),
            body: Stack(
              key: boardKey,
              fit: StackFit.expand,
              children: [
                ComponentWidget(
                  boardKey: boardKey,
                  color: Colors.red,
                  draggingColor: Colors.green,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
