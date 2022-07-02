import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/widgets/components/song/song_widget.dart';

class SongWidget extends StatelessWidget {
  const SongWidget({required ComponentResponse songComponent, this.dragging = false, super.key})
      : _songComponent = songComponent;

  final ComponentResponse _songComponent;
  final bool dragging;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SongBloc(
          songProcessor: context.read<SongProcessor>(),
          songComponent: _songComponent),
      child: BlocBuilder<SongBloc, SongState>(
        builder: (context, state) {
          return Container(
            width: 150,
            height: 150,
            color: dragging ? Colors.red[300] : Colors.red,
            child: Text('Song\n${state.songId}'),
          );
        },
      ),
    );
  }
}
