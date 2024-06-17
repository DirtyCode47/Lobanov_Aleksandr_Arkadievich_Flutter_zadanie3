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
  "settings": "Settings",
  "profile_settings": "Profile Settings",
  "change_avatar": "Change Avatar",
  "name": "Name",
  "notification_settings": "Notification Settings",
  "notifications": "Notifications",
  "email_notifications": "Email Notifications",
  "language_settings": "Language Settings",
  "language": "Language",
  "social_media_name": "Social Media Name",
  "age": "Age",
  "phone": "Phone",
  "status": "Status",
  "random_status_button": "Random Status",
  "info_article": "Information Article",
  "cats_article": "Cats Article",
  "news_feed": "News Feed",
  "like": "Like",
  "news_feed_content": "Check out what's new in the cat and programming world!"
};
static const Map<String,dynamic> ru = {
  "settings": "Настройки",
  "profile_settings": "Настройки профиля",
  "change_avatar": "Сменить аватар",
  "name": "Имя",
  "notification_settings": "Настройки уведомлений",
  "notifications": "Уведомления",
  "email_notifications": "Уведомления по электронной почте",
  "language_settings": "Настройки языка",
  "language": "Язык",
  "social_media_name": "Социальная Сеть",
  "age": "Возраст",
  "phone": "Телефон",
  "status": "Статус",
  "random_status_button": "Случайный Статус",
  "info_article": "Информационная статья",
  "cats_article": "Статья о кошках",
  "news_feed": "Лента новостей",
  "like": "Нравится",
  "news_feed_content": "Смотрите, что нового в мире кошек и программирования!"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
