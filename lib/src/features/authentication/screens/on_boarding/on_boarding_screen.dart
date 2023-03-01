import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:codewithtea/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:codewithtea/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'onboarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            slideIconWidget: Icon(Icons.arrow_back),
            enableSideReveal: true,
            liquidController: controller.controller,
            onPageChangeCallback: controller.onPageChangeCallback,
            pages: [
              OnBoardingPageWidget(
                model: OnBoardingModel(
                  image: tOnBoardingImage1,
                  title: tOnBoardingTitle1,
                  subtitle: tOnBoardingSubTitle1,
                  counterText: tOnBoardingCounter1,
                  size: size.height,
                  bgColor: tOnBoardingPage1Color,
                ),
              ),
              OnBoardingPageWidget(
                model: OnBoardingModel(
                  image: tOnBoardingImage2,
                  title: tOnBoardingTitle2,
                  subtitle: tOnBoardingSubTitle2,
                  counterText: tOnBoardingCounter2,
                  size: size.height,
                  bgColor: tOnBoardingPage2Color,
                ),
              ),
              OnBoardingPageWidget(
                model: OnBoardingModel(
                  image: tOnBoardingImage3,
                  title: tOnBoardingTitle3,
                  subtitle: tOnBoardingSubTitle3,
                  counterText: tOnBoardingCounter3,
                  size: size.height,
                  bgColor: tOnBoardingPage3Color,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                controller.animateToNextSlide();
              },
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: tDarkColor, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
              top: 50.0,
              right: 20.0,
              child: TextButton(
                onPressed: () {
                  controller.skip();
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage.value,
                count: 3,
                effect: WormEffect(
                    activeDotColor: Color(0xff272727), dotHeight: 5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
