import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Todo:Clase para hacer las animaciones
class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation(
      {super.key,
      this.animatePosition,
      required this.durationInMs,
      required this.child});

  final splashController = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedPositioned(
        top: splashController.animated.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        left: splashController.animated.value
            ? animatePosition!.leftAfter
            : animatePosition!.leftBefore,
        bottom: splashController.animated.value
            ? animatePosition!.bottomAfter
            : animatePosition!.bottomBefore,
        right: splashController.animated.value
            ? animatePosition!.rightAfter
            : animatePosition!.rightBefore,
        duration: Duration(milliseconds: durationInMs),
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: splashController.animated.value ? 1 : 0,
            child: child),
      );
    });
  }
}
