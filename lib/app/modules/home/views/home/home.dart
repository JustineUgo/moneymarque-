import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/activity/activity.dart';
import 'package:moneymarque/app/custom/header/header.dart';
import 'package:moneymarque/app/custom/header_activity/header_activity.dart';
import 'package:moneymarque/app/custom/services/services.dart';
import 'package:moneymarque/app/custom/wallet/wallet.dart';
import 'package:moneymarque/app/custom/wallet_switcher/switcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 40,
        ),
        Header(),
        WalletSwitcher(),
        Wallet(),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 170,
          child: Expanded(child: Services()),
        ),
        SizedBox(
          height: 15,
        ),
        HeaderActivity(),
        Expanded(child: Activity()),
      ],
    );
  }
}
