import 'package:flutter/material.dart';
import 'dart:math';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/йода.jpg",
                    //width: 150,
                    //height: 150,
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
                      )
                    ],
                  ),
                ]
            ),
            const Text(
                "Совсем чуток о себе:",
                style: TextStyle(fontWeight: FontWeight.bold)
            ),
            const Text("Мне нравится программирование."),
            const Text("Самый любимый язык программирования C#,"),
            const Text("В частности фреймворк ASP NET core."),
            const Text("Больше информации обо мне можно найти в Readme.md :)"),
            const Text(""),
            const Text(
                "А вот мой топ пород котиков:",
                style: TextStyle(fontWeight: FontWeight.bold)
            ),
            const Text(""),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text("1.Курильский бобтейл"),
                    Image.asset(
                      "assets/images/bobtail.jpg",
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text("2.Мейн-кун"),
                    Image.asset(
                      "assets/images/mainkun.jpg",
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("3. Шотландские вислоухие"),
                    Image.asset(
                      "assets/images/Scotland.jpg",
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
              ],
            )
          ],
        ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}