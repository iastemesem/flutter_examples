import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/app/config/app_router.dart';
import 'package:flutter_examples/l10n/arb/app_localizations.dart';
import 'package:flutter_examples/l10n/l10n.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(
        deepLinkTransformer: (uri) async {
          debugPrint(
            '================ Deeplink transformer ================='
            '\n SCHEME -- ${uri.scheme}'
            '\n HOST -- ${uri.host}'
            '\n PATH -- ${uri.path}'
            '\n SEGMENTS -- ${uri.pathSegments}'
            '\n================ Deeplink transformer =================',
          );
          return SynchronousFuture(
            uri.replace(
              scheme: '',
              host: '',
              path: '${uri.host}${uri.path}',
            ),
          );
        },
        rebuildStackOnDeepLink: true,
        deepLinkBuilder: (deepLink) {
          debugPrint(
            '=========== Deeplink Builder =============='
            '\n SCHEME -- ${deepLink.uri.scheme}'
            '\n HOST -- ${deepLink.uri.host}'
            '\n PATH -- ${deepLink.uri.path}'
            '\n SEGMENTS -- ${deepLink.uri.pathSegments}'
            '\n QUERY PARAMS -- ${deepLink.uri.queryParameters}'
            '\n============ Deeplink Builder ==============',
          );

          if (deepLink.uri.toString().contains('movie-details')) {
            debugPrint('Deep link: HERE movie-details');
            return DeepLink([
              const HomeTab(),
              MoviesTab(),
              const MovieDetailsRoute(),
            ]);
          }

          return deepLink;
        },
      ),
    );
  }
}
