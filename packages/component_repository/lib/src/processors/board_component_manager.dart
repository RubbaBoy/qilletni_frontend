import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';

class BoardComponentManager {
  BoardComponentManager._(
      this.board, this.componentRepository, this.componentRequestRepository);

  final Board board;
  late final List<ComponentResponse> components;
  final ComponentRepository componentRepository;
  final ComponentRequestRepository componentRequestRepository;

  static Future<BoardComponentManager> create(
      {required Board board,
      required ComponentRepository componentRepository,
      required ComponentRequestRepository componentRequestRepository}) async {
    final manager = BoardComponentManager._(
        board, componentRepository, componentRequestRepository);

    await manager._init();
    return manager;
  }

  /// Initializes components of the board. Must be invoked upon construction.
  Future<void> _init() async {
    components = await componentRequestRepository.requestStructure(board.id);
  }

  /// Iteratively looks for a component with the given component ID.
  ComponentResponse getComponent(String componentId) {
    var stack = <ComponentResponse>[...components];

    do {
      final top = stack.removeAt(0);

      if (top.base.componentId == componentId) {
        return top;
      }

      if (top.whichContent() == ComponentResponse_Content.functionComponent) {
        stack.addAll(top.functionComponent.children);
      }
    } while (stack.isNotEmpty);

    throw 'Component not found: $componentId';
  }
}
