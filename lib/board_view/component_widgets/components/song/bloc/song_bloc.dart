import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'song_bloc.g.dart';
part 'song_event.dart';
part 'song_state.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  SongBloc({required ComponentResponse songComponent, required this.songProcessor})
      : super(SongState.fromResponse(songComponent)) {
    on<SongChanged>((event, emit) => emit(state.copyWith(song: event.song)));

    songProcessor.componentRepository
        .listenToComponent(songComponent.base.componentId)
        .splitTypes()
        .listenType<SongChangeEvent>((event) {
          // TODO: Song cache
          // add(SongChanged(event.song));
        });
  }

  final SongProcessor songProcessor;
}
