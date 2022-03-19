import 'package:glosh/core/app_environment.dart';
import 'package:glosh/main.dart';

Future<void> main() async {
  AppEnvironment.env = 'prod';
  AppEnvironment.baseUrl = 'http://mobileapi.cilsy.id:9000/store';
  mainProgram();
}
