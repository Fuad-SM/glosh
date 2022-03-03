import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/routes/getx_route.dart';
import 'package:glosh/common/routes/route_name.dart';
import 'package:glosh/data/model/const.dart';
import 'package:glosh/utils/scroll_config.dart';

Future<void> mainProgram() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print(AppEnvironment.env);
  runApp(const GloshApp());
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
      initialRoute: RouteName.getStartedRoute,
      getPages: GetXRoute.routes,
    );
  }
}
