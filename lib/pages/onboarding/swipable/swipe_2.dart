import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Swipe2 extends StatelessWidget {
  const Swipe2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _swipable());
  }

  SafeArea _swipable() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: 450,
            height: 485,
            child: SvgPicture.asset(
              'assets/icons/Frame2.svg',
              width: 450,
              height: 485,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get Burn',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Let's keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                  style: TextStyle(color: Color(0xff7B6F72), fontSize: 17),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
