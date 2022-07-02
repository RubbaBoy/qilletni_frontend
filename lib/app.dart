import 'package:authentication_repository/authentication_repository.dart';
import 'package:component_grpc/component_grpc.dart';
import 'package:component_repository/component_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qilletni_frontend/authentication/bloc/authentication_bloc.dart';
import 'package:qilletni_frontend/home/home.dart';
import 'package:qilletni_frontend/login/login.dart';
import 'package:qilletni_frontend/splash/splash.dart';

class App extends StatelessWidget {
  const App(
      {super.key,
      required this.authenticationRepository,
      required this.componentRepository,
      required this.boardRepository,
      required this.structureRepository,
      required this.grpcRepository});

  final AuthenticationRepository authenticationRepository;
  final ComponentRepository componentRepository;
  final BoardRepository boardRepository;
  final StructureRepository structureRepository;
  final GrpcRepository grpcRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: authenticationRepository),
        RepositoryProvider.value(value: componentRepository),
        RepositoryProvider.value(value: boardRepository),
        RepositoryProvider.value(value: structureRepository),
        RepositoryProvider.value(value: grpcRepository),
        RepositoryProvider(
            create: (_) => BoardProcessor(boardRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                ForLoopProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                FunctionProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                GeneralProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                LastFmProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                RawCollectionProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) => SongProcessor(componentRepository, grpcRepository)),
        RepositoryProvider(
            create: (_) =>
                SpotifyProcessor(componentRepository, grpcRepository)),
      ],
      child: BlocProvider(
        create: (_) => AuthenticationBloc(authenticationRepository),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) async {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  HomePage.route(),
                  (route) => false,
                );
                break;
              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                  (route) => false,
                );
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
