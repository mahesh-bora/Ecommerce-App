import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Help ',
          style: TextStyle(
              fontFamily: 'CircularStd-Bold.ttf', color: Colors.white),
        ),
        backgroundColor: const Color(0xFF1D182A),
      ),
      body: const Center(
        child: Text(
          'Help Screen',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'CircularStd-Bold.ttf',
              color: Colors.white),
        ),
      ),
    );
  }
}
