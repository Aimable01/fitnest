import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // the header
            SizedBox(
              height: 20,
            ),
            Center(
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
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
