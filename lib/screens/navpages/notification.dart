import 'package:ecommerce_app/screens/navpages/mainpage.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: const Text("Notification",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 200,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Image.asset("assets/bell.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("No Notification Yet!",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 45,
            width: 210,
            decoration: const BoxDecoration(
                border: Border.symmetric(),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0), // Adjust the radius as needed
                ),
                color: Color(0xFF8e6dee)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: const Center(
                child: Text(
                  "Explore Categories",
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
