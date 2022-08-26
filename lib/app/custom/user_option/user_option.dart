import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class UserOption extends StatelessWidget {
  const UserOption({
    Key? key,
    required this.backgroundColor,
    required this.text,
    required this.svg,
    this.isActive = false,
  }) : super(key: key);
  final Color backgroundColor;
  final String text;
  final String svg;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          elevation: 2,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: backgroundColor,
            ),
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              svg,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: isActive ? kBlue : Colors.black38),
        )
      ],
    );
  }
}
