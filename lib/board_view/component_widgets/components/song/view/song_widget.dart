import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/song/song_widget.dart';

class SongWidget extends StatelessWidget {
  const SongWidget(
      {required ComponentResponse songComponent,
        required this.width,
      this.dragging = false,
      super.key})
      : _songComponent = songComponent;

  final ComponentResponse _songComponent;
  final double width;
  final bool dragging;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: 150,
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (context) => SongBloc(
              songProcessor: context.read<SongProcessor>(),
              songComponent: _songComponent),
          child: BlocBuilder<SongBloc, SongState>(
            builder: (context, state) {
              return Text('Song\n${state.song.name}');
            },
          ),
        ),
      ),
    );
  }
}
