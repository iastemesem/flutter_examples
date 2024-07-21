import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_examples/app/config/app_router.dart';

@RoutePage(name: 'DashboardRoute')
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        return const CupertinoNavigationBar(
          middle: Text(
            'Dashboard',
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.systemBackground,
        );
      },
      bottomNavigationBuilder: (_, tabsRouter) {
        return CupertinoTabBar(
          backgroundColor: CupertinoColors.systemBackground,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
      routes: const [
        HomeTab(),
        SettingsTab(),
      ],
    );
  }
}
