import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/login/login.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Column(
        children: [
          ElevatedButton(
            child: const Text('Log in'),
            onPressed: () => context.read<LoginBloc>().add(LoginStarted()),
          )
        ],
      );
    });
  }
}
