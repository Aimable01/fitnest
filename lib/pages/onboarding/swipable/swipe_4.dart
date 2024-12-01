import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Swipe4 extends StatelessWidget {
  const Swipe4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: 450,
            height: 502,
            child: SvgPicture.asset(
              'assets/icons/Frame4.svg',
              width: 450,
              height: 502,
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
                  'Improve Sleep\nQuality',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                  style: TextStyle(color: Color(0xff7B6F72), fontSize: 17),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
