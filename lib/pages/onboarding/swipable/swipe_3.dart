import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Swipe3 extends StatelessWidget {
  const Swipe3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _swipable());
  }

  SafeArea _swipable() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: 460,
            height: 522,
            child: SvgPicture.asset(
              'assets/icons/Frame3.svg',
              width: 460,
              height: 522,
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
                  'Eat Well',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
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
