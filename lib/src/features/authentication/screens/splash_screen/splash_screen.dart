import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:codewithtea/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreenController = Get.put(SplashScreenController());


  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() {
              return AnimatedPositioned(
                  top: splashScreenController.animated.value ? 10 : -80,
                  left: splashScreenController.animated.value ? 20 : -10,
                  duration: const Duration(milliseconds: 1600),
                  child: Container(
                      width: 153,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor)));
            }),
            Obx(() {
              return AnimatedPositioned(
                  duration: const Duration(milliseconds: 1900),
                  top: splashScreenController.animated.value ? 50 : 80,
                  left: splashScreenController.animated.value ? -10 : 10,
                  child: AnimatedOpacity(
                    opacity: splashScreenController.animated.value ? 1 : 0,
                    duration: const Duration(milliseconds: 1600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tAppName,
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineMedium,
                        ),
                        Text(
                          tAppTagLine,
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineLarge,
                        ),
                      ],
                    ),
                  ));
            }),
            Obx(() {
              return AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: 160,
                right: splashScreenController.animated.value
                    ? tDefaultSize
                    : -80,
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                ),
              );
            }),
            Obx(() {
              return AnimatedPositioned(
                  bottom: splashScreenController.animated.value
                      ? tDefaultSize
                      : 20,
                  right: splashScreenController.animated.value
                      ? tDefaultSize
                      : -20,
                  duration: const Duration(milliseconds: 2300),
                  child: Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor),
                  ));
            }),
          ],
        ),
      ),
    );
  }
}
