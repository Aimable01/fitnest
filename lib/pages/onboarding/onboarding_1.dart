import 'package:fitnest/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _onboarding(context),
    );
  }

  SafeArea _onboarding(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'Fitnest',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'X',
                      style: TextStyle(
                        color: Color(0xff92A3FD),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Everybody Can Train',
                  style: TextStyle(color: Color(0xff7B6F72), fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(),
          CustomButton(
              text: 'Get Started',
              gradient: const LinearGradient(
                  colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding2');
              })
        ],
      ),
    );
  }
}
