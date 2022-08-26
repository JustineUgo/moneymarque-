import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class WalletSwitcher extends StatelessWidget {
  const WalletSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 5,
            width: 30,
            decoration: BoxDecoration(
                color: kBlue,
                borderRadius: const BorderRadius.all(Radius.circular(3))),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 5,
            width: 10,
            decoration: BoxDecoration(
                color: kBlue.withOpacity(.6),
                borderRadius: const BorderRadius.all(Radius.circular(3))),
          ),
        ],
      ),
    );
  }
}
