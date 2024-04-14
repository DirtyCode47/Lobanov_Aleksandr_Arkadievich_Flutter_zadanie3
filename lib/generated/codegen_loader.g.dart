// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "name": "Name: ",
  "age": "Age: ",
  "phone": "Phone: ",
  "status": "Status: ",
  "info_article": "Info about me:",
  "cats_article": "The best cat breeds in my opinion: ",
  "random_status_button": "Random status button",
  "social_media_name": "Cat and programming lovers club"
};
static const Map<String,dynamic> ru = {
  "name": "Имя: ",
  "age": "Возраст: ",
  "phone": "Телефон: ",
  "status": "Статус: ",
  "info_article": "Совсем чуток о себе:",
  "cats_article": "А вот мой топ пород котиков:",
  "random_status_button": "Кнопка для рандомного статуса",
  "social_media_name": "Клуб любителей кошек и программирования"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
