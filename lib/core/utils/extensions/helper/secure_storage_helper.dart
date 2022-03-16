part of '../../../core.dart';

class SecureStorageHelper {
  // VARIABELS
  //
  // ignore: non_constant_identifier_names
  final TOKEN_AUTH = "token_auth";
  final storage = new FlutterSecureStorage();

  // METHODS
  //
  Future<String?> readToken() async {
    return await storage.read(key: TOKEN_AUTH);
  }

  deleteToken() async {
    return await storage.delete(key: TOKEN_AUTH);
  }

  saveToken(String? token) async {
    await storage.write(key: TOKEN_AUTH, value: token);
  }
}
