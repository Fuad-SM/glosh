import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/core/app_environment.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/presentation/routes/getx_route.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> mainProgram() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initializeDateFormatting('id_ID', null);
  print(AppEnvironment.env);
  print(AppEnvironment.baseUrl);
  runApp(const GloshApp());
  InjectController.doRegister();
}

class GloshApp extends StatelessWidget {
  const GloshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ScrollConfiguration(
          behavior: ScrollBehaviorModified(), child: widget!),
      title: 'Glosh E-Commerce',
      debugShowCheckedModeBanner: false,
      initialRoute: GetXRoute.startedRouteName,
      getPages: GetXRoute.getPageRoutes,
    );
  }
}
