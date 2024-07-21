import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/features/books/presentation/view/books_page.dart';
import 'package:flutter_examples/features/dashboard/presentation/view/dashboard_page.dart';
import 'package:flutter_examples/features/home/presentation/view/home_page.dart';
import 'package:flutter_examples/features/movie_details/presentation/view/movie_details_page.dart';
import 'package:flutter_examples/features/movies/presentation/view/movies_page.dart';
import 'package:flutter_examples/features/settings/presentation/view/settings_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: HomeTab.page,
              path: 'home',
              children: [
                AutoRoute(page: BooksTab.page, initial: true, path: 'books'),
                AutoRoute(page: MoviesTab.page, path: 'movies/:id'),
              ],
            ),
            AutoRoute(page: SettingsTab.page, path: 'settings'),
          ],
        ),
        AutoRoute(page: MovieDetailsRoute.page, path: '/movie-details'),
      ];
}
