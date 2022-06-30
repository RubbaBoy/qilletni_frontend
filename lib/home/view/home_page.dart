import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/authentication/authentication.dart';
import 'package:qilletni_frontend/board_view/board_view.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Row(
          children: [
            const BoardView(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    final userId = context.select(
                          (AuthenticationBloc bloc) => bloc.state.userInfo?.name,
                    );
                    return Text('UserID: $userId');
                  },
                ),
                ElevatedButton(
                  child: const Text('Logout'),
                  onPressed: () {
                    context
                        .read<AuthenticationBloc>()
                        .add(AuthenticationLogoutRequested());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}