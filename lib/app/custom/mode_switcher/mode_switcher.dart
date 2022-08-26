import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ModeSwitcher extends StatelessWidget {
  const ModeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Switch(value: false, onChanged: (value) {}),
          Text(
            'Turn on Dark Mode',
            style: TextStyle(fontSize: 14, color: Color(0xff3F465E)),
          )
        ],
      ),
    );
  }
}
