import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class Header extends StatelessWidget {
  const Header({Key? key, this.isRouted = false}) : super(key: key);
  final bool isRouted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          if (isRouted) 
          const Icon(Icons.chevron_left_rounded),
          if (!isRouted)
            Text(
              'Yo! Micheal',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w600, color: kBlue),
            ),
          const Spacer(),
          if (!isRouted)
            const Icon(
              Icons.headset_outlined,
              color: Colors.grey,
            ),
          const SizedBox(
            width: 15,
          ),
          SvgPicture.asset(Images.notification),
        ],
      ),
    );
  }
}
