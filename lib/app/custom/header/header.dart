import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Yo! Micheal',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: kBlue),
        ),
        const Spacer(),
        const Icon(
          Icons.headset_outlined,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset(Images.notification),
      ],
    );
  }
}
