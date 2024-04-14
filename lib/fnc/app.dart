
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lobanov_a_a_flutter_zadanie3/UI/homep.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Пользователь: Лобанов Александр'),
    );
  }
}

class langButton extends StatelessWidget{

  Function() buttonFnc;

  langButton({super.key, required this.buttonFnc});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.purple,
          textStyle: const TextStyle(fontSize: 18),
        ),
        onPressed: buttonFnc,
        child: Text(context.locale.toString())
    );
  }
}
