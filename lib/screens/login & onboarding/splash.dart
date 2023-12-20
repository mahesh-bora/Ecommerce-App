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
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => signInScreen()),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF8e6dee),
      body: Center(
          child: Container(
        height: double.maxFinite,
        width: 200,
        child: Image.asset('assets/AppLogo.png'),
      )),
    ));
  }
}
