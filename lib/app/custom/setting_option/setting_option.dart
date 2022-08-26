import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: kGrey,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Images.home,
            width: 18,
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Home Settings',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff3F465E)),
          ),
        ],
      ),
    );
  }
}
