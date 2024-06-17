import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/UI/homep_screen.dart'; // Импортируем экраны, которые могут использовать переводы
import 'package:lobanov_a_a_flutter_zadanie3/router/app_router.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      localizationsDelegates: context.localizationDelegates, // Делегаты для локализации
      supportedLocales: context.supportedLocales, // Поддерживаемые локали
      locale: context.locale, // Текущая локаль
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
    );
  }
}