import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Swipe1 extends StatelessWidget {
  const Swipe1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: 450,
            height: 485,
            child: SvgPicture.asset(
              'assets/icons/Frame1.svg',
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
                  'Track Your Goal',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                  "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
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
