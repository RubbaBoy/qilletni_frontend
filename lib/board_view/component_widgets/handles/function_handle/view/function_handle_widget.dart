import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/function/function_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/inspectable_widget.dart';

class FunctionHandleWidget extends StatelessWidget {
  const FunctionHandleWidget(
      {required this.componentId,
      required this.boardComponentManager,
      this.dragging = false,
      super.key});

  final BoardComponentManager boardComponentManager;
  final String componentId;
  final bool dragging;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FunctionBloc(
          componentId: componentId,
          boardComponentManager: boardComponentManager,
          functionProcessor: context.read<FunctionProcessor>()),
      child: BlocBuilder<FunctionBloc, FunctionState>(
        builder: (context, state) {
          final component = state.component;
          return InspectableWidget(
            component: state.componentResponse,
            child: Container(
              width: 100,
              height: 25,
              color: dragging ? Colors.green[200] : Colors.green[300],
              child: Center(
                child: Text(
                  component.name,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
