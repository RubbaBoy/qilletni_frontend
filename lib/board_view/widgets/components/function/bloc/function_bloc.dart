import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';

part 'function_bloc.g.dart';
part 'function_event.dart';
part 'function_state.dart';

class FunctionBloc extends Bloc<FunctionEvent, FunctionState> {
  FunctionBloc(
      {required ComponentResponse functionComponent, required this.functionProcessor})
      : super(FunctionState.fromResponse(functionComponent)) {
    on<ChildrenReordered>(_onChildrenReordered);
  }

  final FunctionProcessor functionProcessor;

  void _onChildrenReordered(ChildrenReordered event, Emitter<FunctionState> emit) {
    emit(state.copyWith(children: swap(state.children, event.oldIndex, event.newIndex)));
  }
}

String printList(List<ComponentResponse> list) {
  var out = '';
  for (var item in list) {
    out += '${item.song.song.name}, ';
  }
  return out.substring(0, out.length - 2);
}

List<E> swap<E>(List<E> list, int first, int second) {
  var listCopy = list.toList();
  var temp = listCopy.removeAt(second);
  listCopy.insert(first, temp);
  return listCopy;
}
