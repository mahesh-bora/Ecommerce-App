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
        title: const Text('Help ',
            style: TextStyle(
                color: Colors.white, fontFamily: 'CircularStd-Bold.ttf')),
        backgroundColor: const Color(0xFF1D182A),
      ),
      body: const Center(
        child: Text(
          'Help Screen',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'CircularStd-Bold.ttf',
              fontSize: 20),
        ),
      ),
    );
  }
}
