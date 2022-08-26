import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/mode_switcher/mode_switcher.dart';
import 'package:moneymarque/app/custom/option_panel/option_panel.dart';
import 'package:moneymarque/app/custom/setting_option/setting_option.dart';
import 'package:moneymarque/app/custom/user/user.dart';
import 'package:moneymarque/app/utils/images/image.dart';

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
            child: ListView(
              children: const [
                OptionPanel(),
                SizedBox(
                  height: 20,
                ),
                SettingsOption(
                  text: 'Home Settings',
                  svg: Images.home,
                ),
                SizedBox(
                  height: 10,
                ),
                SettingsOption(
                  text: 'Account Settings',
                  svg: Images.calculator,
                ),
                SizedBox(
                  height: 10,
                ),
                SettingsOption(
                  text: 'Cards & Bank Account',
                  svg: Images.card,
                ),
                SizedBox(
                  height: 10,
                ),
                SettingsOption(
                  text: 'Change Password',
                  svg: Images.password,
                ),
                SizedBox(
                  height: 10,
                ),
                SettingsOption(
                  text: 'Change Password',
                  svg: Images.settings,
                ),
                SizedBox(
                  height: 10,
                ),
                SettingsOption(
                  text: 'Sign Out',
                  svg: Images.exit,
                ),
                SizedBox(
                  height: 15,
                ),
                ModeSwitcher()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
