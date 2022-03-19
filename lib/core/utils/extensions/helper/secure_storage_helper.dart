part of '../../../core.dart';

class SecureStorageHelper {
  // VARIABELS
  //
  // ignore: non_constant_identifier_names
  static String env = '${AppEnvironment.env}';
  final TOKEN_AUTH = "token_auth$env";
  final COOKIE_AUTH = "cookie_auth$env";
  final storage = new FlutterSecureStorage();

  // METHODS
  // Token
  Future<String?> readToken() async {
    return await storage.read(key: TOKEN_AUTH);
  }

  deleteToken() async {
    return await storage.delete(key: TOKEN_AUTH);
  }

  saveToken(String? token) async {
    await storage.write(key: TOKEN_AUTH, value: token);
  }

  // Cookie
  Future<String?> readCookie() async {
    return await storage.read(key: COOKIE_AUTH);
  }

  deleteCookie() async {
    return await storage.delete(key: COOKIE_AUTH);
  }

  saveCookie(String? cookie) async {
    await storage.write(key: COOKIE_AUTH, value: cookie);
  }
}
