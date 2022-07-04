import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/list_utility.dart';

part 'function_bloc.g.dart';

part 'function_event.dart';

part 'function_state.dart';

class FunctionBloc extends Bloc<FunctionEvent, FunctionState> {
  FunctionBloc({required this.component,
    required this.componentRequestRepository,
    required this.functionProcessor})
      : super(FunctionState.fromResponse(component)) {
    on<ChildrenReordered>(_onChildrenReordered);
    on<ChildrenChangedExternally>(_onChildrenChangedExternally);
  }

  final ComponentResponse component;
  final ComponentRequestRepository componentRequestRepository;
  final FunctionProcessor functionProcessor;

  Future<void> _onChildrenReordered(
      ChildrenReordered event, Emitter<FunctionState> emit) {
    var newChildren = swap(state.children, event.oldIndex, event.newIndex);
    final oldState = state.copyWith();

    emit(state.copyWith(children: newChildren));

    return functionProcessor
        .changeChildren(component.base.componentId,
            newChildren.map((e) => e.base.componentId).toList())
        .then((error) {
      if (error != null) {
        emit(oldState);
        throw error;
      }
    });
  }

  /// Children changed from some outsourced event
  Future<void> _onChildrenChangedExternally(
      ChildrenChangedExternally event, Emitter<FunctionState> emit) {
    return _getNewChildren()
        .then((children) => emit(state.copyWith(children: children)));
  }

  Future<List<ComponentResponse>> _getNewChildren() {
    return componentRequestRepository
        .requestFunction(component.base.componentId)
        .then(
            (functionResponse) => functionResponse.functionComponent.children);
  }
}

String printList(List<ComponentResponse> list) {
  var out = '';
  for (var item in list) {
    out += '${item.song.song.name}, ';
  }
  return out.substring(0, out.length - 2);
}
