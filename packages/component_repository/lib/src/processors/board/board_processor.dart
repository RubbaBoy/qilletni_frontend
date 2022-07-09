import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:component_repository/src/repositories/board_repository.dart';
import 'package:protobuf/protobuf.dart';

class BoardProcessor extends Processor<BoardServiceClient> {
  BoardProcessor(this.boardRepository, super.grpcRepository)
      : super(
            clientCreator: (channel, callOptions) =>
                BoardServiceClient(channel, options: callOptions));

  final BoardRepository boardRepository;

  @override
  GeneratedMessage createModify(String boardId) =>
      BoardModifyEvent(boardId: boardId);

  @override
  void postChange(String boardId, ComponentResponse component) {
    boardRepository.publishChange(boardId, component);
  }

  Future<BoardCreateResponse> create(String name) {
    return client.create(BoardCreateEvent(name: name)).then((response) {
      if (response.hasError()) {
        ResponseError error = response.error;
        print(
            'Error processing create event (Status: ${error.code}): ${error.message}');
      }

      boardRepository.publishCreate(response);
      return response;
    });
  }

  Future<ResponseError?> changeName(String componentId, String name) =>
      processModifyEvent(
          componentId, client.changeName, BoardNameChangeEvent(name: name));

  Future<List<Board>> requestBoards() => client
      .requestBoards(BoardsRequestEvent())
      .then((response) => response.boards);
}
