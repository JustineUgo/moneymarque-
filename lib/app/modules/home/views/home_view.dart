import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:moneymarque/app/modules/home/views/home/home.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            Home(),
          ],
        ),
      ),
    );
  }
}
