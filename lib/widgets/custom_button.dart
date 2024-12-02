import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String? iconPathBeforeText;
  final String? iconPathAfterText;
  final Gradient gradient;
  final VoidCallback onPressed;

  const CustomButton(
      {super.key,
      required this.text,
      this.iconPathBeforeText,
      this.iconPathAfterText,
      required this.gradient,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: 390,
        margin: const EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: gradient.colors.first.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 0.0,
                  offset: const Offset(0, 10))
            ],
            gradient: gradient),
        child: Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPathBeforeText != null)
              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SvgPicture.asset(iconPathBeforeText!)),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
            if (iconPathAfterText != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SvgPicture.asset(iconPathAfterText!),
              )
          ],
        )),
      ),
    );
  }
}
