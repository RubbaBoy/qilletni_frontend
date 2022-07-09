import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:meta/meta.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component_bloc.dart';
import 'package:qilletni_frontend/list_utility.dart';

part 'function_event.dart';

part 'function_state.dart';

class FunctionBloc
    extends AbstractComponentBloc<FunctionEvent,
        FunctionState,
        ComponentUpdated> {
  FunctionBloc({required super.componentId,
    required super.boardComponentManager,
    required FunctionProcessor functionProcessor})
      : _functionProcessor = functionProcessor,
        super(
          updateEventCreator: ComponentUpdated.new,
          initialStateCreator: FunctionState.new) {
    on<ChildrenReordered>(_onChildrenReordered);

    print('func comnpMan = $boardComponentManager');
  }

  final FunctionProcessor _functionProcessor;

  void _onChildrenReordered(ChildrenReordered event,
      Emitter<FunctionState> emit) {
    var newChildren =
    swap(state.component.children, event.oldIndex, event.newIndex)
        .map((e) => e.base.componentId)
        .toList();

    _functionProcessor.changeChildren(componentId, newChildren);
  }
}

String printList(List<ComponentResponse> list) {
  var out = '';
  for (var item in list) {
    out += '${item.song.song.name}, ';
  }
  return out.substring(0, out.length - 2);
}
