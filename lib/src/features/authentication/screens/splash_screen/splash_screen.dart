import 'package:codewithtea/src/common_widgets/fade_in_animation/animation_desing.dart';
import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:codewithtea/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(
              durationInMs: 1600,
              animatePosition: TAnimatePosition(
                  topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
              child: Image(
                image: AssetImage(tSplashImage),
              ),
            ),
            TFadeInAnimation(
                durationInMs: 2000,
                animatePosition: TAnimatePosition(
                    topBefore: 80,
                    topAfter: 80,
                    leftAfter: tDefaultSize,
                    leftBefore: -80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                )),
            TFadeInAnimation(
              durationInMs: 2400,
              animatePosition: TAnimatePosition(
                  bottomAfter: 100,
                  bottomBefore: 100,
                  rightAfter: 40,
                  rightBefore: -23),
              child: Image(
                image: AssetImage(tSplashTopIcon),
              ),
            ),
            TFadeInAnimation(
                durationInMs: 2400,
                animatePosition: TAnimatePosition(
                    bottomBefore: 50,
                    bottomAfter: 50,
                    rightAfter: 0,
                    rightBefore: 20),
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: tPrimaryColor),
                )),
          ],
        ),
      ),
    );
  }
}
