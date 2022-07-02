import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_list/bloc/board_list_bloc.dart';
import 'package:qilletni_frontend/board_list/board_list.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';

class BoardList extends StatelessWidget {
  const BoardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return BoardListBloc(
          boardProcessor: RepositoryProvider.of<BoardProcessor>(context),
        );
      },
      child: BlocListener<BoardListBloc, BoardListState>(
        listener: (context, state) {
          switch (state.status) {
            case BoardListStatus.adding:
              WidgetsBinding.instance.addPostFrameCallback((_) {
                AddBoardModal.showModal(context).then((addedBoard) {
                  context
                      .read<BoardListBloc>()
                      .add(addedBoard ? BoardListed() : BoardEndedAdding());
                });
              });
              break;
            case BoardListStatus.nothing:
              break;
          }
        },
        child: BlocBuilder<BoardListBloc, BoardListState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (var board in state.boards) boardWidget(context, board),
                const Spacer(),
                refreshButton(context),
                addButton(context),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget refreshButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text('View Boards'),
        onPressed: () {
          context.read<BoardListBloc>().add(BoardListed());
        },
      ),
    );
  }

  Widget addButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text('Add Board'),
        onPressed: () {
          context.read<BoardListBloc>().add(BoardClickAdded());
        },
      ),
    );
  }

  Widget boardWidget(BuildContext context, Board board) {
    return InkWell(
      onTap: () => Navigator.push(context, BoardView.route(board: board)),
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text('Board ${board.id} - ${board.name}'),
        ),
      ),
    );
  }
}
