import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'MovieDetailsRoute')
class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            onTap: () => context.router.maybePop(),
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 24,
            ),
          ),
          middle: const Text(
            'Movie Details',
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        child: const Placeholder(),
      ),
    );
  }
}
