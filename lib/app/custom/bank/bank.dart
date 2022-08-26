import 'package:flutter/material.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WEMA BANK',
            style: TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: kBlue),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: kBlue,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.copy,
                  color: kWhite,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '7851472891',
                  style: TextStyle(
                      fontWeight: FontWeight.w300, fontSize: 18, color: kWhite),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
