import 'package:cleaningapp/config/routes/routes_name.dart';
import 'package:cleaningapp/views/Splash/splash_view.dart';
import 'package:cleaningapp/views/calender/CalendarPage.dart';
import 'package:cleaningapp/views/home/home_view.dart';
import 'package:cleaningapp/views/service%20booking/service_booking_view.dart';
import 'package:cleaningapp/views/onborading/onboarding_view.dart';

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
    GoRoute(
      path: RouteName.calenderRoute,
      builder: (context, state) => const CalendarPage(),
      name: RouteName.calenderRoute,
    ),
    GoRoute(
      path: RouteName.onBoardRoute,
      builder: (context, state) => const OnBoardingScreen(),
      name: RouteName.onBoardRoute,
    ),
    GoRoute(
      path: RouteName.serviceBookRoute,
      builder: (context, state) => const ServiceBookingView(),
      name: RouteName.serviceBookRoute,
    ),
  ],
);
