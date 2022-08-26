import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    Key? key,
    required this.text,
    required this.svg,
  }) : super(key: key);
  final String text;
  final String svg;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: kGrey,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            svg,
            width: 18,
            color: const Color(0xff3F465E),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff3F465E)),
          ),
        ],
      ),
    );
  }
}
