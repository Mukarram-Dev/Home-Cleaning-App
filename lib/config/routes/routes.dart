import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/views/Splash/splash_view.dart';
import 'package:cleaningapp/views/home%20/home_view.dart';

import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteName.splashRoute,
      builder: (context, state) => const SplashView(),
      name: RouteName.splashRoute,
    ),
    GoRoute(
      path: RouteName.homeRoute,
      builder: (context, state) => const HomeView(),
      name: RouteName.homeRoute,
    ),
  ],
);
