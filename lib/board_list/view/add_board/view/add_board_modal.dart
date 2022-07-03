import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:qilletni_frontend/board_list/view/add_board/add_board.dart';

class AddBoardModal extends StatelessWidget {
  const AddBoardModal({super.key});

  /// Shows the dialog, returning if a board was created or not.
  static Future<bool> showModal(BuildContext context) {
    return showDialog<bool>(
        context: context,
        builder: (_) {
          return const AddBoardModal();
        }).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddBoardBloc(
        grpcRepository: RepositoryProvider.of<GrpcRepository>(context),
      ),
      child: BlocConsumer<AddBoardBloc, AddBoardState>(
        listener: (context, state) {
          switch (state.status) {
            case FormzStatus.pure:
            case FormzStatus.valid:
            case FormzStatus.invalid:
            case FormzStatus.submissionInProgress:
              break;
            case FormzStatus.submissionSuccess:
              Navigator.pop(context, true);
              break;
            case FormzStatus.submissionFailure:
            case FormzStatus.submissionCanceled:
              Navigator.pop(context, false);
              break;
          }
        },
        builder: (context, state) {
          return AlertDialog(
            title: const Text('Create a Board'),
            content: TextField(
              key: const Key('loginForm_emailInput_textField'),
              onChanged: (name) =>
                  context.read<AddBoardBloc>().add(ChangedName(name)),
              onSubmitted: (_) {
                if (state.status != FormzStatus.invalid) {
                  context.read<AddBoardBloc>().add(const SubmittedBoard());
                }
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: 'Board name',
                helperText: '',
                errorText: state.boardName.valid ? null : 'Invalid name',
              ),
            ),
            actionsPadding: const EdgeInsets.all(8.0),
            actions: [
              ElevatedButton(
                onPressed: state.status == FormzStatus.invalid
                    ? null
                    : () => context
                        .read<AddBoardBloc>()
                        .add(const SubmittedBoard()),
                child: const Text('Create'),
              ),
              TextButton(
                  onPressed: () =>
                      context.read<AddBoardBloc>().add(const CancelledBoard()),
                  child: const Text('Cancel')),
            ],
          );
        },
      ),
    );
  }
}
