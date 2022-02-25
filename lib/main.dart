import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glosh/common/routes/getx_route.dart';
import 'package:glosh/common/routes/route_name.dart';

void main() {
  runApp(const GloshApp());
}

class GloshApp extends StatelessWidget {
  const GloshApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Glosh E-Commerce',
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.getStartedRoute,
      getPages: GetXRoute.routes,
    );
  }
}
