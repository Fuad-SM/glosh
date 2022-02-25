import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InvalidScreen extends StatelessWidget {
  const InvalidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/json/coming_soon.json',
              width: MediaQuery.of(context).size.width - 40,
            ),
          ],
        ),
      ),
    );
  }
}
