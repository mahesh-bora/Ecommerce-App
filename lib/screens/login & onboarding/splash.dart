import 'dart:async';

import 'package:ecommerce_app/screens/login%20&%20onboarding/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait for 5 seconds and then navigate to the next screen
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8e6dee),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF8e6dee),
      body: Center(
          child: SizedBox(
        height: double.maxFinite,
        width: 200,
        child: Image.asset('assets/AppLogo.png'),
      )),
    );
  }
}
