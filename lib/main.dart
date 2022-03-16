import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/core/app_environment.dart';
import 'package:glosh/core/core.dart';
import 'package:glosh/data/repositories/admin/product_repository.dart';
import 'package:glosh/presentation/routes/getx_route.dart';
import 'package:glosh/presentation/routes/route_name.dart';

Future<void> mainProgram() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print(AppEnvironment.env);
  print(AppEnvironment.baseUrl);
  runApp(const GloshApp());
  InjectController.doRegister();

  final test = await ProductRepositories.getAllProduct();

  test.fold((l) => print(l), (r) => print(r));
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
