// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class BuildProgressIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  const BuildProgressIndicator(
      {super.key, required this.currentPage, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    final double progress = (currentPage + 1) / totalPages;

    return SizedBox(
      height: 90,
      width: 90,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular background
          SizedBox(
            height: 70,
            width: 70,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(
                const Color(0xff92A3FD),
              ),
            ),
          ),
          // Center button with icon
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
              ),
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/Arrow - right 2.svg',
                height: 14,
                width: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
