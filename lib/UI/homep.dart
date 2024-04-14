import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lobanov_a_a_flutter_zadanie3/generated/locale_keys.g.dart';
import 'package:lobanov_a_a_flutter_zadanie3/fnc/app.dart';




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
      /*appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),*/
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                langButton(buttonFnc: () {
                  if(context.locale == const Locale("ru")){
                    context.setLocale(const Locale("en"));
                  }
                  else{
                    context.setLocale(const Locale("ru"));
                  }
                }),
                const SizedBox(width: 5),
                Text(LocaleKeys.social_media_name.tr())
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("#AVATAR_IMAGE"),
                  /*Image.asset(
                    "assets/images/йода.jpg",
                    width: 150,
                    height: 150,
                  ),*/
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(LocaleKeys.name.tr(),
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18)),
                          const Text("#NAME",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      Row(
                        children: [
                          Text(LocaleKeys.age.tr(),
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18)),
                          const Text("#AGE",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      Row(
                        children: [
                          Text(LocaleKeys.phone.tr(),
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18)),
                          const Text("#PHONE",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      Row(
                        children: [
                          Text(LocaleKeys.status.tr(),
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18)),
                          const Text("#STATUS",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      /*const Text(
                        "Имя: Лобанов Александр Аркадьевич",
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "Возраст: 22",
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const Text(
                          "Телефон: 88005553535",
                          style: const TextStyle(fontSize: 18)
                      ),
                      Text(
                          "Статус: $_status",
                          textAlign: TextAlign.start,
                          style:  const TextStyle(fontSize: 18)
                      ),*/
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.purple,
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                        onPressed: _chooseRandomStatus,
                        child: Text(LocaleKeys.random_status_button.tr()),
                      )
                    ],
                  ),
                ]
            ),
            Column(
              children: [
                Text(
                    LocaleKeys.info_article.tr(),
                    style: TextStyle(fontWeight: FontWeight.bold)
                ),
                const SizedBox( height: 5),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Flexible(child: Text(
                        "#INFO",
                        textAlign: TextAlign.justify,
                        )
                      ),
                      const SizedBox(width: 10)
                    ]
                )
              ]
            ),
            //const Text("Мне нравится программирование."),
            //const Text("Самый любимый язык программирования C#,"),
            //const Text("В частности фреймворк ASP NET core."),
            //const Text("Больше информации обо мне можно найти в Readme.md :)"),
            Column(
              children: [
                Text(
                    LocaleKeys.cats_article.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold)
                ),
                const SizedBox( height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        // Text("Курильский бобтейл"),
                        Text("#CAT1_BREED"),
                        Text("#CAT1_IMAGE")
                        /*Image.asset(
                          "assets/images/bobtail.jpg",
                          width: 150,
                          height: 150,
                        )*/
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        // Text("Мейн-кун"),
                        Text("#CAT2_BREED"),
                        Text("#CAT2_IMAGE")
                        /*Image.asset(
                          "assets/images/mainkun.jpg",
                          width: 150,
                          height: 150,
                        )*/
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        // Text("Шотландская вислоухая"),
                        Text("#CAT3_BREED"),
                        Text("#CAT3_IMAGE")
                        /*Image.asset(
                          "assets/images/Scotland.jpg",
                          width: 150,
                          height: 150,
                        )*/
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}