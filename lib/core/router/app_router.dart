import 'package:go_router/go_router.dart';
import 'package:swamp/core/router/router_consts.dart';

import '../../features/buttons/presentation/pages/buttons_screen.dart';
import '../../features/effects/presentation/pages/effects_page.dart';
import '../../features/effects/presentation/pages/glass_list.dart';
import '../../features/home/presentation/pages/home_screen.dart';
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
          ),
          GoRoute(
            name: RouterConsts.effectsName,
            path: RouterConsts.effectsPath,
            builder: (context, state) => const EffectsScreen(),
             routes: [
               GoRoute(
                 name: RouterConsts.glassName,
                 path: RouterConsts.glassPath,
                 builder: (context, state) => const GlassList(),
               ),
             ]
          ),
        ],
      ),
    ],
  );
}
