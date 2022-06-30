import 'package:authentication_repository/authentication_repository.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';

class BoardView extends StatelessWidget {
  const BoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return BoardViewBloc(
          grpcRepository: RepositoryProvider.of<GrpcRepository>(context),
        );
      },
      child: BlocBuilder<BoardViewBloc, BoardViewState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (var board in state.boards)
                boardWidget(board),
              const Spacer(),
              refreshButton(context)
            ],
          );
        },
      ),
    );
  }

  Widget refreshButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        child: const Text('View Boards'),
        onPressed: () {
          context
              .read<BoardViewBloc>()
              .add(BoardListed());
        },
      ),
    );
  }

  Widget boardWidget(Board board) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text('Board ${board.id} - ${board.name}'),
      ),
    );
  }
}
