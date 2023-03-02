import 'package:codewithtea/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:codewithtea/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:codewithtea/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//TODO:Controlador de la clase con la que se hace las animaciones
class FadeInAnimationController extends GetxController {
  RxBool animated = false.obs;

  static FadeInAnimationController get find => Get.find();

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animated.value = true;

    await Future.delayed(Duration(milliseconds: 3000));

    animated.value = false;

    await Future.delayed(Duration(milliseconds: 2000));

    Get.to(() =>
        OnBoardingScreen()); //Navigator.pushReplacement(context, newRoute)
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animated.value = true;
    //Navigator.pushReplacement(context, newRoute)
  }
}
