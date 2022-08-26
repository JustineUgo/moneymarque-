import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class Slot extends StatelessWidget {
  const Slot({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.timeframe,
    required this.timeline,
    required this.backgroundColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String timeframe;
  final String timeline;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 90,
            width: (Get.width) / 1.3,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'N300,782',
                      style: TextStyle(
                        color: kBlue,
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: kBlack.withOpacity(.2),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  timeframe,
                  style: const TextStyle(
                    color: Color(0xff00AFEF),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              color: kGreen,
            ),
            child: Text(
              timeline,
              style: TextStyle(
                fontSize: 10,
                color: kWhite,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
