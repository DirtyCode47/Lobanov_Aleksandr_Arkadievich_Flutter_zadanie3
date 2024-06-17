import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lobanov_a_a_flutter_zadanie3/generated/locale_keys.g.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              LocaleKeys.profile_settings.tr(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar_placeholder.jpg"),
              ),
              title: Text(LocaleKeys.change_avatar.tr()),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle avatar change
              },
            ),
            ListTile(
              title: Text(LocaleKeys.name.tr()),
              subtitle: const Text("Alexander Lobanov"), // Replace with actual user name
              trailing: const Icon(Icons.edit),
              onTap: () {
                // Handle name change
              },
            ),
            const Divider(),
            Text(
              LocaleKeys.notification_settings.tr(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text(LocaleKeys.notifications.tr()),
              value: true,
              onChanged: (bool value) {
                // Handle notifications toggle
              },
            ),
            SwitchListTile(
              title: Text(LocaleKeys.email_notifications.tr()),
              value: false,
              onChanged: (bool value) {
                // Handle email notifications toggle
              },
            ),
            const Divider(),
            Text(
              LocaleKeys.language_settings.tr(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text(LocaleKeys.language.tr()),
              subtitle: Text(context.locale == const Locale('ru') ? "Русский" : "English"),
              trailing: const Icon(Icons.language),
              onTap: () {
                if (context.locale == const Locale('ru')) {
                  context.setLocale(const Locale('en')); // Устанавливаем английскую локаль
                } else {
                  context.setLocale(const Locale('ru')); // Устанавливаем русскую локаль
                }
                // Вызываем перезагрузку страницы путем замены текущей страницы новой страницей с обновленной локалью
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => SettingsScreen()), // Создаем новый экземпляр SettingsScreen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}