import 'package:codewithtea/src/common_widgets/fade_in_animation/animation_desing.dart';
import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:codewithtea/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:codewithtea/src/features/authentication/screens/login/login_screen.dart';
import 'package:codewithtea/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var brightness = MediaQuery.platformBrightnessOf;
    final isDarkMode = brightness == Brightness.dark;
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(children: [
        TFadeInAnimation(
          durationInMs: 1200,
          animatePosition: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0),
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                  tag: "heroImage",
                  child: Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: size.height * 0.60,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      tWelcomeTitle,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      tWelcomeSubTitle,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                              Get.offAll(() => LoginScreen());
                            },
                            child: Text(tLogin.toUpperCase()))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(() => SignUpScreen());
                          },
                          child: Text(tSignup.toUpperCase())),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
