import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'modules/auth/models/auth_state.dart';
import 'services/routes.dart';
import 'modules/auth/controller/auth_notifier.dart';

void main() {
  runApp(const ProviderScope(child: RootApp()));
}

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  late AuthNotifier _authNotifier;

  late final _router = GoRouter(
    routes: routesBuilder,
    errorPageBuilder: errorPageBuilder,
    urlPathStrategy: UrlPathStrategy.path,
    refreshListenable: _authNotifier,
    redirect: (state) {
      final goingToLogin = state.location == '/login';
      debugPrint(_authNotifier.authState.index.toString());
      // the user is not logged in and not headed to /login, they need to login
      if (_authNotifier.authState == AuthState.loggedOut && !goingToLogin) {
        return '/login';
      }
      // the user is logged in and headed to /login, no need to login again
      if (_authNotifier.authState == AuthState.loggedIn && goingToLogin) {
        return '/';
      }
      // no need to redirect at all
      return null;
    },
  );

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        _authNotifier = ref.watch(authNotifier);
        return MaterialApp.router(
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
