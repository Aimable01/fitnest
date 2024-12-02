import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatefulWidget {
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
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscurred;

  @override
  void initState() {
    super.initState();
    _isObscurred = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 244, 244, 244),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color(0xffADA4A5),
              fontSize: 16,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            prefixIcon: widget.prefixIconPath != null
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(widget.prefixIconPath!),
                  )
                : null,
            suffixIcon: widget.suffixIconPath != null
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _isObscurred = !_isObscurred;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(_isObscurred
                          ? widget.suffixIconPath!
                          : "assets/icons/Show-Password.svg"),
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
          obscureText: _isObscurred,
          validator: widget.validator,
          onSaved: widget.onSave,
        ),
      ),
    );
  }
}
