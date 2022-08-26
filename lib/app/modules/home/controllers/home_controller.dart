import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();

  Rx<int> screen = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    switchScreen(1);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void switchScreen(int _screen) {
    screen(_screen);
    pageController.animateToPage(_screen,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
