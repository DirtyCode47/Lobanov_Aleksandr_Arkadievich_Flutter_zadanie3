import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lobanov_a_a_flutter_zadanie3/generated/locale_keys.g.dart';
import 'package:auto_route/auto_route.dart';
import 'package:lobanov_a_a_flutter_zadanie3/router/app_router.gr.dart';

@RoutePage()
class HomepScreen extends StatefulWidget {
  const HomepScreen({super.key, required this.title});

  final String title;

  @override
  State<HomepScreen> createState() => _HomepScreenState();
}

class _HomepScreenState extends State<HomepScreen> {
  Random random = Random();
  String _status = "Пока без статуса";
  final _profileStatuses = [
    "Я люблю пиццу",
    "За окном rain, на душе pain",
    "Не придумал статус :(",
    "Ты тот, кто ты у себя в голове",
    "Собирай моменты, а не вещи."
  ];

  void _chooseRandomStatus() {
    setState(() {
      _status = _profileStatuses[random.nextInt(5)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.social_media_name.tr())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("#AVATAR_IMAGE"),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(LocaleKeys.name.tr(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 18)),
                        const Text("#NAME",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text(LocaleKeys.age.tr(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 18)),
                        const Text("#AGE",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text(LocaleKeys.phone.tr(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 18)),
                        const Text("#PHONE",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Row(
                      children: [
                        Text(LocaleKeys.status.tr(),
                            textAlign: TextAlign.start,
                            style: const TextStyle(fontSize: 18)),
                        const Text("#STATUS",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 18))
                      ],
                    ),
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
              ],
            ),
            Column(
              children: [
                Text(
                    LocaleKeys.info_article.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 5),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Flexible(child: Text(
                        "#INFO",
                        textAlign: TextAlign.justify,
                      )
                      ),
                      SizedBox(width: 10)
                    ]
                )
              ],
            ),
            Column(
              children: [
                Text(
                    LocaleKeys.cats_article.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold)
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("#CAT1_BREED"),
                        Text("#CAT1_IMAGE")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("#CAT2_BREED"),
                        Text("#CAT2_IMAGE")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("#CAT3_BREED"),
                        Text("#CAT3_IMAGE")
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}