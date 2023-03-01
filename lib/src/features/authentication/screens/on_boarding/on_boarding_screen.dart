import 'package:codewithtea/src/constants/colors.dart';
import 'package:codewithtea/src/constants/image_strings.dart';
import 'package:codewithtea/src/constants/sizes.dart';
import 'package:codewithtea/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        LiquidSwipe(
          pages: [
            Container(
              padding: EdgeInsets.all(tDefaultSize),
              color: tOnBoardingPage1Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tOnBoardingImage1),
                  ),
                  Column(
                    children: [
                      Text(
                        tOnBoardingTitle1,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        tOnBoardingSubTitle1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(tOnBoardingCounter1),
                  SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ),
            Container(
                color: tOnBoardingPage2Color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(tOnBoardingImage2),
                    ),
                    Column(
                      children: [
                        Text(tOnBoardingTitle2),
                        Text(tOnBoardingSubTitle2),
                      ],
                    ),
                    Text(tOnBoardingCounter2),
                  ],
                )),
            Container(
                color: tOnBoardingPage3Color,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(tOnBoardingImage3),
                    ),
                    Column(
                      children: [
                        Text(tOnBoardingTitle3),
                        Text(tOnBoardingSubTitle3),
                      ],
                    ),
                    Text(tOnBoardingCounter3),
                  ],
                )),
          ],
        )
      ]),
    );
  }
}
