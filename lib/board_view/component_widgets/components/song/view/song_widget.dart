import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/inspectable_widget.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/song/song_widget.dart';

class SongWidget extends StatelessWidget {
  const SongWidget(
      {required this.componentId,
      required this.width,
      required this.boardComponentManager,
      this.dragging = false,
      super.key});

  final String componentId;
  final double width;
  final bool dragging;

  // The reordable column widget was I think changing the context of this, so
  // BoardComponentManager isn't able to be read but SongProcessor could.
  // It would be very nice not have to pass this in, so looking into this
  // in the future would be ideal.
  final BoardComponentManager boardComponentManager;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SongBloc(
          componentId: componentId,
          boardComponentManager: boardComponentManager,
          songProcessor: context.read<SongProcessor>()),
      child: BlocBuilder<SongBloc, SongState>(
        builder: (context, state) {
          return InspectableWidget(
            component: state.componentResponse,
            child: Container(
              width: width,
              // height: 150,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Song\n${state.component.song.name}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
