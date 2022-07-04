import 'package:component_grpc/component_grpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';

class InspectableWidget extends StatelessWidget {
  const InspectableWidget({required this.component, required this.child, super.key});

  final ComponentResponse component;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => context.read<BoardViewBloc>().add(ComponentInspected(component: component)),
      child: child,
    );
  }
}
