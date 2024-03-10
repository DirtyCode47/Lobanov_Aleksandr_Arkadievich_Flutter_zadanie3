import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = new Random();
  String _status = "Пока без статуса";
  final _profileStatuses = ["Я люблю пиццу", "За окном rain, на душе pain",
    "Не придумал статус :(","Ты тот, кто ты у себя в голове",
    "Собирай моменты, а не вещи."];

  void _chooseRandomStatus() {
    setState(() {
      _status = _profileStatuses[random.nextInt(5)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(
              //Icons.assignment_ind_outlined
              //Icons.photo_camera_front_rounded
              Icons.account_circle_outlined,
              color: Colors.deepPurple,
              size: 200.0
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Имя: Лобанов Александр Аркадьевич",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20),
                ),
                const Text(
                  "Возраст: 22",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20),
                ),
                const Text(
                  "Телефон: 88005553535",
                  style: const TextStyle(fontSize: 20)
                ),
                Text(
                  "Статус: $_status",
                  textAlign: TextAlign.start,
                  style:  const TextStyle(fontSize: 20)
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.purple,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: _chooseRandomStatus,
                  child: const Text('Кнопка для рандомного статуса'),
                ),
              ]
            ),
            const Padding(
                padding: EdgeInsets.only(left: 60,top: 260),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Совсем чуток о себе:",
                          style:  const TextStyle(fontWeight: FontWeight.bold)
                      ),
                      Text("Мне нравится программирование."),
                      Text("Самый любимый язык программирования C#,"),
                      Text("В частности фреймворк ASP NET core."),
                      Text("Больше информации обо мне можно найти в Readme.md :)"),
                    ],
                )
            )
          ],
        ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
