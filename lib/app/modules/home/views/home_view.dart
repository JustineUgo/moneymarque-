import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:moneymarque/app/modules/home/views/home/home.dart';
import 'package:moneymarque/app/modules/home/views/kwik/kwik.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: PageView(
              onPageChanged: (value) => controller.switchScreen(value),
              controller: controller.pageController,
              children: const [
                Kwik(),
                Home(),
                Home(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: 65,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                  color: KBottomNav,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(5),
                    right: Radius.circular(5),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => controller.switchScreen(0),
                    child: Obx(() => controller.screen.value == 0
                        ? SvgPicture.asset(
                            Images.kwik,
                          )
                        : SvgPicture.asset(
                            Images.kwikGrey,
                          )),
                  ),
                  GestureDetector(
                    onTap: () => controller.switchScreen(1),
                    child: Obx(
                      () => SvgPicture.asset(Images.home,
                          color: controller.screen.value == 1
                              ? kBlue
                              : kBlack.withOpacity(.6)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.switchScreen(2),
                    child: Obx(() => SvgPicture.asset(Images.profile,
                        color: controller.screen.value == 2
                            ? Color(0xff3E4095)
                            : kBlack.withOpacity(.6))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
