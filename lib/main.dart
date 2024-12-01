import 'package:fitnest/pages/auth/register.dart';
import 'package:fitnest/pages/onboarding/onboarding_1.dart';
import 'package:fitnest/pages/onboarding/onboarding_2.dart';
import 'package:fitnest/pages/onboarding/onboarding_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitnestX',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const Onboarding1(),
      routes: {
        '/onboarding2': (context) => const Onboarding2(),
        '/onboarding3': (context) => const Onboarding3(),
        '/register': (context) => const Register()
      },
    );
  }
}
