import 'package:codewithtea/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    if (currentPage.value < 2) {
      int nextPage = controller.currentPage + 1;
      controller.animateToPage(page: nextPage);


    }
    else{
      Get.offAll(() => WelcomeScreen());
    }
  }
}
