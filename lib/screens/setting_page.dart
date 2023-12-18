import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notifications'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Settings'),
        ],
      ),
      body: const Placeholder(),
    );
  }
}
