part of '../../../core.dart';

class PreferencesHelper {
  static String env = '${AppEnvironment.env}';
  static String emailKey = 'EMAIL$env';
  static String startingKey = 'START$env';
  final sharedPreferences = SharedPreferences.getInstance();

  Future<String?> getEmail() async {
    final prefs = await sharedPreferences;
    return prefs.getString(emailKey) ?? '';
  }

  Future<bool?> getStart() async {
    final prefs = await sharedPreferences;
    return prefs.getBool(startingKey) ?? false;
  }

  saveStart(bool check) async {
    final prefs = await sharedPreferences;
    prefs.setBool(startingKey, check);
  }

  saveUserLogin(String email) async {
    final prefs = await sharedPreferences;
    prefs.setString(emailKey, email);
  }

  deleteUser() async {
    final prefs = await sharedPreferences;
    prefs.remove(emailKey);
  }
}
