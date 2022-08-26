import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';

class KwikLite extends StatelessWidget {
  const KwikLite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: Get.width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          kBlueLight,
          kBlue,
        ],
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'KWIK LITE',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 15,
                    color: kWhite.withOpacity(.7),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'N 300,782',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                        color: kWhite),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 8.0),
                    child: Icon(
                      Icons.visibility_off_outlined,
                      color: kWhite.withOpacity(.4),
                      size: 20,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Icon(Icons.add_rounded, color: kWhite, size: 50)
        ],
      ),
    );
  }
}
