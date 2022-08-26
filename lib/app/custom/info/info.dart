import 'package:flutter/cupertino.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'FUND KWIKLITE',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your Kwiklite is directly connected to a bank account which could be funded using the above Wema Bank Account Number.',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color(0xff35313099)),
          ),
        ],
      ),
    );
  }
}
