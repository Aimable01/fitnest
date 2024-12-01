import 'package:fitnest/pages/onboarding/swipable/swipe_1.dart';
import 'package:fitnest/pages/onboarding/swipable/swipe_2.dart';
import 'package:fitnest/pages/onboarding/swipable/swipe_3.dart';
import 'package:fitnest/pages/onboarding/swipable/swipe_4.dart';
import 'package:fitnest/widgets/_build_progress_indicator.dart';
import 'package:flutter/material.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final totalPages = 4;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Page view for onboarding screens
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [Swipe1(), Swipe2(), Swipe3(), Swipe4()],
          ),
          // Circular progress bar
          Positioned(
            bottom: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                totalPages,
                (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: BuildProgressIndicator(
                      isActive: index == _currentPage,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
