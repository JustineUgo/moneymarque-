import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneymarque/app/utils/colors/colors.dart';
import 'package:moneymarque/app/utils/images/image.dart';

class AcitivityTile extends StatelessWidget {
  const AcitivityTile({
    Key? key,
    required this.isDebit,
    required this.color,
    required this.title,
    required this.subtitle,
    this.icon,
  }) : super(key: key);

  final bool isDebit;
  final Color color;
  final String title;
  final String subtitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: kGrey,
      child: ListTile(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 18,
            ),
            Positioned(
              top: 0,
              bottom: icon != null ? 0 : 2,
              left: icon != null ? 0 : 2,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(icon != null ? 0 : 8.0),
                child: icon != null
                    ? Icon(
                        icon,
                        color: kWhite,
                        size: 32,
                      )
                    : SvgPicture.asset(
                        Images.dart,
                      ),
              ),
            )
          ],
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 12, color: kBlue, fontWeight: FontWeight.w600),
        ),
        subtitle: Text.rich(TextSpan(
          children: [
            const TextSpan(
              text: 'TRNX928292768303;',
            ),
            TextSpan(
              text: subtitle,
              style: TextStyle(
                  color: kBlue.withOpacity(.5), fontWeight: FontWeight.w500),
            ),
          ],
          style: const TextStyle(
            fontSize: 10,
            color: Color(0xff3E409545),
          ),
        )),
        trailing: Text(
          'N 15,000',
          style: TextStyle(
            color: isDebit ? KDebit : kBlueLight,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
