import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../modules/home/views/home.dart';
import '../modules/auth/views/login.dart';
import '../widgets/unknown_page.dart';

List<GoRoute> routesBuilder = [
  GoRoute(
    name: 'home',
    path: '/',
    pageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: const Home(),
    ),
  ),
  GoRoute(
    name: 'login',
    path: '/login',
    pageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: const Login(),
    ),
  ),
];

Page<dynamic> errorPageBuilder(BuildContext context, GoRouterState state) =>
    MaterialPage<void>(
      key: state.pageKey,
      child: const UnknownPage(),
    );
