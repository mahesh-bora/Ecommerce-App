import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF1D182A),
        title: const Text(
          'Support',
          style: TextStyle(
            fontFamily: 'CircularStd-Bold.ttf',
            color: Colors.white,
          ),
        ),
      ),
      body: const Center(
        child: Text('Support Screen',
            style: TextStyle(
                fontFamily: 'CircularStd-Bold.ttf',
                fontSize: 20,
                color: Colors.white)),
      ),
    );
  }
}
