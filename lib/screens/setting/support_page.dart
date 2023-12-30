import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D182A),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Support',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'CircularStd-Bold.ttf',
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Support Screen',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'CircularStd-Bold.ttf',
              fontSize: 20),
        ),
      ),
    );
  }
}
