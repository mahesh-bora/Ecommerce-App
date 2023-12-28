import 'package:ecommerce_app/screens/login%20&%20onboarding/sign_in.dart';
import 'package:flutter/material.dart';

class EmailSentScreen extends StatelessWidget {
  const EmailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201C2C),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image(image: AssetImage("assets/email_sent.png")),
            ),
            Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "We have sent you an email to reset your Password!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Circular Std',
                    fontWeight: FontWeight.w500,
                    height: 1.2, // Adjust the line height as needed
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              width: 225,
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
                      MaterialPageRoute(builder: (context) => signInScreen()),
                    );
                  },
                  child: Text(
                    "Return to login",
                    style: TextStyle(
                      fontFamily: 'CircularStd.ttf',
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
