import 'package:codewithtea/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:codewithtea/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:codewithtea/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  RxBool animated = false.obs;

  static SplashScreenController get find => Get.find();

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 1000));

    animated.value = true;

    await Future.delayed(Duration(milliseconds: 3000));

    animated.value = false;

    await Future.delayed(Duration(milliseconds: 1000));

    Get.to(() => OnBoardingScreen()); //Navigator.pushReplacement(context, newRoute)
  }
}
