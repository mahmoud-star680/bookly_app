import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/featrues/splach/presentation/splach_screen.dart';
import 'package:bookly/featrues/home/presentation/screens/home_screen.dart';
import 'package:bookly/featrues/search/presentaion/Screens/search_screen.dart';
import 'package:bookly/featrues/home/presentation/screens/book_details_screen.dart';

abstract class AppRouter {
  static const kHomeScreen = '/HomeScreen';
  static const kBookDetailsScreen = '/BookDetailsScreen';
  static const kSearchScreen = '/SearchScreen';
  static final router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplachScreen();
        },
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsScreen();
        },
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
    ],
  );
}
