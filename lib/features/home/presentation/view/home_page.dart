import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/app/config/app_router.dart';

@RoutePage(name: 'HomeTab')
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        const BooksTab(),
        MoviesTab(),
      ],
      builder: (context, child, tabController) {
        return Column(
          children: [
            ColoredBox(
              color: CupertinoColors.black,
              child: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(text: 'Books'),
                  Tab(text: 'Movies'),
                ],
              ),
            ),
            Expanded(child: child),
          ],
        );
      },
    );
  }
}
