import 'package:base_project/core/network/local/shared_pref.dart';
import 'package:base_project/core/network/local/shared_pref_key.dart';
import 'package:base_project/core/routes/route_name.dart';
import 'package:base_project/features/home/view/screens/home_screen.dart';
import 'package:base_project/features/splash/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final routeProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final isLoggedIn = SharedPref.getData(SharedPrefKeys.token);

      print("Current Route: ${state.matchedLocation}");

      if (state.matchedLocation == Routes.splashRoute) {
        return Routes.splashRoute;
      }

      print("Final Route after redirection: ${state.matchedLocation}");

      return null;
    },
    initialLocation: Routes.splashRoute,
    routes: [
      GoRoute(
        path: Routes.splashRoute,
        name: NameRoutes.splashNameRoute,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: SplashScreen());
        },
      ),
      GoRoute(
        path: Routes.defaultRoute,
        name: NameRoutes.defaultNameRoute,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: HomeScreen());
        },
      ),
    ],
  );
});
