import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class HeaderActivity extends StatelessWidget {
  const HeaderActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(Images.activity),
          const SizedBox(
            width: 10,
          ),
          Text(
            'ACTIVITY',
            style: TextStyle(
                fontSize: 10, color: kBlue, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Icon(
            Icons.date_range_outlined,
            color: kBlue,
            size: 18,
          )
        ],
      ),
    );
  }
}
