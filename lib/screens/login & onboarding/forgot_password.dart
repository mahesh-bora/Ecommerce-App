import 'package:flutter/material.dart';

import 'email_sent.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF201C2C),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
                child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF342F3F), // Set the background color here
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Email Address",
                  hintText: "Enter Email Address",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(
                          255, 255, 255, 0.5)), // White with opacity 0.5

                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
            )),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 45,
              decoration: const BoxDecoration(
                  border: Border.symmetric(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0), // Adjust the radius as needed
                  ),
                  color: Color(0xFF8e6dee)),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailSentScreen()),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold',
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ));
  }
}
