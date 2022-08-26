import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 5,
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        kBlueLight,
        kBlue,
      ])),
      child: SizedBox(
        height: Get.width / 6,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: Get.width / 6,
              width: Get.width / 6,
              decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'HELLO',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Adeseyi Bimbo',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: kWhite.withOpacity(.2),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Icon(Icons.edit, color: kWhite, size: 15),
            ),
          ],
        ),
      ),
    );
  }
}
