import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:qilletni_frontend/app.dart';
import 'package:reorderables/reorderables.dart';
import 'package:uni_links_desktop/uni_links_desktop.dart';
import 'package:grpc/grpc.dart';

Future<void> main() async {
  if (Platform.isMacOS || Platform.isWindows) {
    enableUniLinksDesktop();
    if (Platform.isWindows) {
      registerProtocol('qilletni');
    }
  }

  final sessionStore = await HiveSessionStore.create();

  final authRepository = AuthenticationRepository(sessionStore);

  final channel = ClientChannel(
    const String.fromEnvironment('GRPC_HOST', defaultValue: 'localhost'),
    port: const int.fromEnvironment('GRPC_PORT', defaultValue: 9090),
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final grpcRepository = GrpcRepository(
      channel: channel, authSupplier: () => authRepository.getSessionId());

  final componentRepository = ComponentRepository();
  final boardRepository = BoardRepository();
  final structureRepository = StructureRepository(grpcRepository);

  // runApp(MaterialApp(
  //   home: Scaffold(
  //     appBar: AppBar(title: const Text('Home')),
  //     body: Bruh(),
  //   ),
  // ));
  runApp(App(
    authenticationRepository: authRepository,
    componentRepository: componentRepository,
    boardRepository: boardRepository,
    structureRepository: structureRepository,
    grpcRepository: grpcRepository,
  ));
}

class Bruh extends StatefulWidget {
  const Bruh({Key? key}) : super(key: key);

  @override
  State<Bruh> createState() => _ColumnExample1State();
}


class _ColumnExample1State extends State<Bruh> {
  List<Widget> _rows = [];

  @override
  void initState() {
    super.initState();
    _rows = List<Widget>.generate(50,
            (int index) => Text('This is row $index', key: ValueKey(index), textScaleFactor: 1.5)
    );
  }

  @override
  Widget build(BuildContext context) {
    void _onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = _rows.removeAt(oldIndex);
        _rows.insert(newIndex, row);
      });
    }

    return ReorderableColumn(
      header: Text('THIS IS THE HEADER ROW'),
      footer: Text('THIS IS THE FOOTER ROW'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _rows,
      onReorder: _onReorder,
    );
  }
}
