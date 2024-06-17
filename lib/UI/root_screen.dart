import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/router/app_router.gr.dart';
@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomepRoute(),
        NewsFeedRoute(),
        SettingsRoute()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Профиль',
              icon: Icon(Icons.book),
            ),
            BottomNavigationBarItem(
              label: 'Лента новостей',
              icon: Icon(Icons.book_online),
            ),
            BottomNavigationBarItem(
              label: 'Настройки',
              icon: Icon(Icons.verified_user),
            ),
          ],
        );
      },
    );
  }
}