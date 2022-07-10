import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component_bloc.dart';

part 'song_event.dart';

part 'song_state.dart';

class SongBloc
    extends AbstractComponentBloc<SongEvent, SongState, ComponentUpdated> {
  SongBloc(
      {required super.componentId,
      required super.boardComponentManager,
      required SongProcessor songProcessor})
      : _songProcessor = songProcessor,
        super(
            updateEventCreator: ComponentUpdated.new,
            initialStateCreator: SongState.fromComponent) {
    on<SongChanged>(
        (event, emit) => songProcessor.changeSong(componentId, event.songId));
  }

  final SongProcessor _songProcessor;
}
