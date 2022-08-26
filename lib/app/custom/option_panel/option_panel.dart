import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/custom/user_option/user_option.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class OptionPanel extends StatelessWidget {
  const OptionPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: Get.width,
      decoration: BoxDecoration(
          color: kGrey,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserOption(
            text: 'Settings',
            svg: Images.settings,
            backgroundColor: kBlue,
            isActive: true,
          ),
          UserOption(
            text: 'Transactions',
            svg: Images.transactions,
            backgroundColor: kGrey,
          ),
          UserOption(
            text: 'Loan Document',
            svg: Images.loan,
            backgroundColor: kGrey,
          ),
        ],
      ),
    );
  }
}
