import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            controller.welcomeText.value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),
      );
}
