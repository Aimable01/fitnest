import 'package:fitnest/utils/form_validator_extension.dart';
import 'package:fitnest/widgets/custom_button.dart';
import 'package:fitnest/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _password;

  bool checked = false;
  void checkBoxChanged(bool? value) {
    setState(() {
      checked = !checked;
    });
  }

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // the header
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hey there,',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Create an Account',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // the form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'First Name',
                      prefixIconPath: 'assets/icons/Profile.svg',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.isValidFirstName) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                      onSave: (value) {
                        _firstName = value;
                      },
                    ),
                    CustomTextField(
                      hintText: 'Last Name',
                      prefixIconPath: 'assets/icons/Profile.svg',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.isValidLastName) {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                      onSave: (value) {
                        _lastName = value;
                      },
                    ),
                    CustomTextField(
                      hintText: 'Email',
                      prefixIconPath: 'assets/icons/Message.svg',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.isValidEmail) {
                          return "Email should be valid";
                        }
                        return null;
                      },
                      onSave: (value) {
                        _email = value;
                      },
                    ),
                    CustomTextField(
                      obscureText: true,
                      hintText: 'Password',
                      prefixIconPath: 'assets/icons/Lock.svg',
                      suffixIconPath: 'assets/icons/Hide-Password.svg',
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.isValidPassword) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                      onSave: (value) {
                        _password = value;
                      },
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CheckboxTheme(
                          data: const CheckboxThemeData(
                              side: BorderSide(color: Color(0xffADA4A5))),
                          child: Checkbox(
                            value: checked,
                            onChanged: (value) => checkBoxChanged(value),
                            activeColor: const Color(0xffADA4A5),
                          ),
                        ),
                        const Text(
                          "By continuing you accept our Privacy Policy\nand Term of Use",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffADA4A5)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    CustomButton(
                        text: 'Register',
                        gradient: const LinearGradient(
                            colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
                        onPressed: () {}),
                  ],
                ),
              ),
              // the divider
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color(0xFFADA4A5),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color(0xFFADA4A5),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffADA4A5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/google-icon-logo-svgrepo-com.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 60,
                    width: 60,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffADA4A5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/Facebook.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      ' Login',
                      style: TextStyle(fontSize: 17, color: Colors.purple),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
