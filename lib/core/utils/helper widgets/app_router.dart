import 'package:flutter_application_11/Features/home/presentation/views/book_details_view.dart';
import 'package:flutter_application_11/Features/home/presentation/views/home_view.dart';
import 'package:flutter_application_11/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kbookDetailsView = '/bookDetailsView';
  static const ksearchView = '/searchView';
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
      GoRoute(
        path: kbookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
