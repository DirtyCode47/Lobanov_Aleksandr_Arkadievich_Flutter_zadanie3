import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/UI/homep_screen.dart';
import 'package:lobanov_a_a_flutter_zadanie3/UI/settings_screen.dart';
import 'package:lobanov_a_a_flutter_zadanie3/router/app_router.gr.dart';



@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    /// Основной, корневой маршрут
    AutoRoute(
      page: RootRoute.page,
      initial: true,
      children: [
        /// Вложенные маршруты
        AutoRoute(page: HomepRoute.page, initial: true),
        AutoRoute(page: NewsFeedRoute.page),
        AutoRoute(page: SettingsRoute.page),
      ],
    ),
  ];
}
