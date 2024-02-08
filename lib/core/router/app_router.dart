import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swamp/core/router/router_consts.dart';

import '../../fetaures/buttons/presentation/pages/buttons_screen.dart';
import '../../fetaures/home/presentation/pages/home_screen.dart';
import 'error_screen.dart';

class AppRouter {
  static GoRouter get router => _router;

  static final _router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(error: state.error.toString()),
    initialLocation: RouterConsts.homePath,
    routes: [
      GoRoute(
        name: RouterConsts.homeName,
        path: RouterConsts.homePath,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: RouterConsts.buttonsName,
            path: RouterConsts.buttonsPath,
            builder: (context, state) => const ButtonsScreen(),
          )
        ],
      ),
    ],
  );
}
