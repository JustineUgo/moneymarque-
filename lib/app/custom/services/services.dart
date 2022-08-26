import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 170,
          width: 150,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
              color: kGrey,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 13,
                        backgroundColor: Color(0xff00AFEF),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 1,
                        left: 1,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            Images.dart,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Goals',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
