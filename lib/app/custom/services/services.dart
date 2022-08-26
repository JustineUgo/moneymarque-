import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 170,
          width: (Get.width - 50) / 2,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              color: kGrey,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
                  const Text(
                    'Goals',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Vehicle',
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
              ),
              Text(
                'N300,782',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kBlue, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Stack(
                  children: [
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4))),
                    ),
                    Positioned(
                      left: 0,
                      child: Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                            color: kGreen,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Matures in 310 days',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 170,
          width: (Get.width - 50) / 2,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              color: kGrey,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.grey[300],
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: kBlue,
                child: SvgPicture.asset(Images.money),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Apply for Credit',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kBlue,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Reach your goals quicker and easier with savings and investment with Kwikee',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: kBlue.withOpacity(.6),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 170,
          width: (Get.width - 50) / 2,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              color: kGrey,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.grey[300],
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: kBlue,
                child: SvgPicture.asset(Images.money),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Apply for Credit',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kBlue,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Reach your goals quicker and easier with savings and investment with Kwikee',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: kBlue.withOpacity(.6),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
