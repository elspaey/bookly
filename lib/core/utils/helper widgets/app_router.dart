import 'package:flutter_application_11/Features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const khomeView='/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const splashView(),
    ),
    GoRoute(
      path: khomeView,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
}