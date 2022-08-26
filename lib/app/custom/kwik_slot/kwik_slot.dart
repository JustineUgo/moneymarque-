import 'package:flutter/material.dart';
import 'package:moneymarque/app/custom/slot/slot.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class KwikSlot extends StatelessWidget {
  const KwikSlot({Key? key, required this.point, required this.title, required this.subtitle, required this.timeframe, required this.timeline, required this.backgroundColor}) : super(key: key);

  final String point;
  final String title;
  final String subtitle;
  final String timeframe;
  final String timeline;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                Text(
                  point,
                  style: TextStyle(
                      color: kBlack.withOpacity(.4),
                      fontSize: 9,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.info_outline,
                  size: 15,
                  color: kBlack.withOpacity(.4),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:  [
                      const SizedBox(
                        width: 20,
                      ),
                      Slot(
                        title: title,
                        subtitle: subtitle,
                        timeframe: timeframe,
                        timeline: timeline,
                        backgroundColor: backgroundColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Slot(
                        title: title,
                        subtitle: subtitle,
                        timeframe: timeframe,
                        timeline: timeline,
                        backgroundColor: backgroundColor,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
