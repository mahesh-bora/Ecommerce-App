import 'package:ecommerce_app/screens/login%20&%20onboarding/forgot_password.dart';
import 'package:ecommerce_app/screens/login%20&%20onboarding/sign_in.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                "Create Account",
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
                  labelText: "First Name",
                  hintText: "First Name",
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
              decoration: BoxDecoration(
                color: Color(0xFF342F3F), // Set the background color here
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
                  hintText: "Last Name",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(
                          255, 255, 255, 0.5)), // White with opacity 0.5
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF342F3F), // Set the background color here
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(
                          255, 255, 255, 0.5)), // White with opacity 0.5
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF342F3F), // Set the background color here
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(
                          255, 255, 255, 0.5)), // White with opacity 0.5
                  labelStyle:
                      TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
            ),
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signInScreen()),
                  );
                },
                child: Center(
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
            Row(
              children: [
                Container(
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the CreateAccountScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    },
                    child: Text(
                      "Reset Here!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Circular Std',
                        fontWeight: FontWeight.bold,
                        height: 0,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 25,
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
