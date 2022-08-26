import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/activity_tile/activity_tile.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const AcitivityTile(
          color: Color(0xff00AFEF),
          title: 'Goals Savings KS2229829',
          subtitle: '12 Oct, 2022.',
          isDebit: false,
        ),
        const SizedBox(
          height: 10,
        ),
        AcitivityTile(
          color: kGreen,
          title: 'Credit YURI8372920',
          subtitle: '11 Oct, 2022.',
          isDebit: false,
          icon: Icons.expand_more_rounded,
        ),
        const SizedBox(
          height: 10,
        ),
        AcitivityTile(
          color: kBlue,
          title: 'Goals Savings KS2229829',
          subtitle: '12 Oct, 2022.',
          isDebit: false,
        ),
        const SizedBox(
          height: 10,
        ),
        AcitivityTile(
          color: KDebit,
          title: 'Debit YURI8372920',
          subtitle: '11 Oct, 2022.',
          isDebit: true,
          icon: Icons.expand_less_outlined,
        ),
        const SizedBox(
          height: 70,
        )
      ],
    );
  }
}
