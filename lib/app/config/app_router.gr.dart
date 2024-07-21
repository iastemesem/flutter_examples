// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BooksTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BooksPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    HomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MovieDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MovieDetailsPage(),
      );
    },
    MoviesTab.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MoviesTabArgs>(
          orElse: () => MoviesTabArgs(movieId: pathParams.optInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MoviesPage(
          key: args.key,
          movieId: args.movieId,
        ),
      );
    },
    SettingsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [BooksPage]
class BooksTab extends PageRouteInfo<void> {
  const BooksTab({List<PageRouteInfo>? children})
      : super(
          BooksTab.name,
          initialChildren: children,
        );

  static const String name = 'BooksTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeTab extends PageRouteInfo<void> {
  const HomeTab({List<PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailsPage]
class MovieDetailsRoute extends PageRouteInfo<void> {
  const MovieDetailsRoute({List<PageRouteInfo>? children})
      : super(
          MovieDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MoviesPage]
class MoviesTab extends PageRouteInfo<MoviesTabArgs> {
  MoviesTab({
    Key? key,
    int? movieId,
    List<PageRouteInfo>? children,
  }) : super(
          MoviesTab.name,
          args: MoviesTabArgs(
            key: key,
            movieId: movieId,
          ),
          rawPathParams: {'id': movieId},
          initialChildren: children,
        );

  static const String name = 'MoviesTab';

  static const PageInfo<MoviesTabArgs> page = PageInfo<MoviesTabArgs>(name);
}

class MoviesTabArgs {
  const MoviesTabArgs({
    this.key,
    this.movieId,
  });

  final Key? key;

  final int? movieId;

  @override
  String toString() {
    return 'MoviesTabArgs{key: $key, movieId: $movieId}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsTab extends PageRouteInfo<void> {
  const SettingsTab({List<PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}
