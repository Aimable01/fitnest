import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSave;

  const CustomTextField(
      {super.key,
      this.obscureText = false,
      required this.hintText,
      this.prefixIconPath,
      this.suffixIconPath,
      this.validator,
      this.onSave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            contentPadding: const EdgeInsets.all(15),
            prefixIcon: prefixIconPath != null
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(prefixIconPath!),
                  )
                : null,
            suffixIcon: suffixIconPath != null
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(suffixIconPath!),
                  )
                : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
        obscureText: obscureText,
        validator: validator,
        onSaved: onSave,
      ),
    );
  }
}
