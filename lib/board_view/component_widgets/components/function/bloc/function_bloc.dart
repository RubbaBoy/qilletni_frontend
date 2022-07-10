import 'package:bloc/bloc.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component.dart';
import 'package:qilletni_frontend/board_view/abstract_component/abstract_component_bloc.dart';
import 'package:qilletni_frontend/board_view/component_widgets/components/function/function_widget.dart';
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
          initialStateCreator: FunctionState.fromComponent) {
    on<ChildrenReordered>(_onChildrenReordered);
  }

  final FunctionProcessor _functionProcessor;

  Future<void> _onChildrenReordered(ChildrenReordered event,
      Emitter<FunctionState> emit) {
    var newChildren = swap(
        state.component.children, event.oldIndex, event.newIndex);

    final newFunctionComponent = state.component.rebuild((message) {
      message.children
        ..clear()
        ..addAll(newChildren);
    });

    final newComponent = state.componentResponse.rebuild((message) {
      message.functionComponent = newFunctionComponent;
    });

    var newState = state.copyWithNewComponent(newComponent);
    emit(state.transitionTo(newState));

    return _functionProcessor
        .changeChildren(
        componentId, newChildren.map((e) => e.base.componentId).toList())
        .onFailed((_) => revert(emit));
  }
}

String printList(List<ComponentResponse> list) {
  var out = '';
  for (var item in list) {
    out += '${item.song.song.name}, ';
  }
  return out.substring(0, out.length - 2);
}
