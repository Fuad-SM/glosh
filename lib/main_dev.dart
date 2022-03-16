import 'package:glosh/core/app_environment.dart';
import 'package:glosh/main.dart';

Future<void> main() async {
  AppEnvironment.env = 'dev';
  AppEnvironment.baseUrl = 'mobileapi.cilsy.id:9000/admin/';
  mainProgram();
}
