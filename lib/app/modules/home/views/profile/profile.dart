import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/option_panel/option_panel.dart';
import 'package:moneymarque/app/custom/setting_option/setting_option.dart';
import 'package:moneymarque/app/custom/user/user.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        User(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                OptionPanel(),
                SizedBox(
                  height: 20,
                ),
                SettingsOption(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
