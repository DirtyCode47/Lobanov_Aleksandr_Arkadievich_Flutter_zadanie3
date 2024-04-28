import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/fnc/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
      EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ru')],
          path: 'assets/languages', // <-- change the path of the translation files
          fallbackLocale: const Locale('en'),
          child: MyApp()
      ),
  );
}


