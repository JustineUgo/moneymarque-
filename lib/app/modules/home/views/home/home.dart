import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/custom/header/header.dart';
import 'package:moneymarque/app/custom/services/services.dart';
import 'package:moneymarque/app/custom/wallet/wallet.dart';
import 'package:moneymarque/app/custom/wallet_switcher/switcher.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
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
          // Services(),
        ],
      ),
    );
  }
}
