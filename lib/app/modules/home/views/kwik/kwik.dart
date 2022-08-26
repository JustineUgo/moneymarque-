import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/bank/bank.dart';
import 'package:moneymarque/app/custom/header/header.dart';
import 'package:moneymarque/app/custom/info/info.dart';
import 'package:moneymarque/app/custom/kwik_lite/kwik_lite.dart';
import 'package:moneymarque/app/custom/kwik_slot/kwik_slot.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class Kwik extends StatelessWidget {
  const Kwik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Header(
          isRouted: true,
        ),
        const SizedBox(
          height: 30,
        ),
        const KwikLite(),
        const SizedBox(
          height: 25,
        ),
        const Info(),
        const Bank(),
        const KwikSlot(
          point: 'KWIK MAX',
          title: 'VEHICLE',
          subtitle: 'N20,000/month',
          timeframe: '2/12 Months',
          timeline: 'Matures in 310 days',
          backgroundColor: Colors.black12,
        ),
        KwikSlot(
          point: 'GOALS',
          title: 'SCHOOL FEES',
          subtitle: 'N50,000/month',
          timeframe: '1/3 Months',
          timeline: 'Matures in 40 days',
          backgroundColor: kGreen.withOpacity(.2),
        ),
      ],
    );
  }
}
