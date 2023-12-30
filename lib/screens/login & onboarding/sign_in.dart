import 'package:ecommerce_app/screens/login%20&%20onboarding/password_screen.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Positioned(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF342F3F), // Set the background color here
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                    hintText: "Email Address",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(
                            255, 255, 255, 0.5)), // White with opacity 0.5
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                    // errorText: "Please Fill the input"),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
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
                      MaterialPageRoute(
                          builder: (context) => const PasswordScreen()),
                    );
                  },
                  child: const Center(
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
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    "Dont have an Account ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.41,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the CreateAccountScreen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen()),
                      );
                    },
                    child: const Text(
                      "Create One Here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Circular Std',
                        fontWeight: FontWeight.bold,
                        height: 0,
                        letterSpacing: -0.41,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        16.0), // Adjust the horizontal padding as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF342F3F),
                  borderRadius: BorderRadius.circular(
                      100.0), // Adjust the radius as needed
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 30,
                      width: 30,
                      "assets/appleLogo.png",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                        width:
                            16.0), // Adjust the width of the space between the logo and text
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Continue With Apple",
                          style: TextStyle(
                            fontFamily: 'CircularStd-Bold',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        16.0), // Adjust the horizontal padding as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF342F3F),
                  borderRadius: BorderRadius.circular(
                      100.0), // Adjust the radius as needed
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 30,
                      width: 30,
                      "assets/googleLogo.png",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                        width:
                            16.0), // Adjust the width of the space between the logo and text
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Continue With Google",
                          style: TextStyle(
                            fontFamily: 'CircularStd-Bold',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        16.0), // Adjust the horizontal padding as needed
                decoration: BoxDecoration(
                  color: const Color(0xFF342F3F),
                  borderRadius: BorderRadius.circular(
                      100.0), // Adjust the radius as needed
                ),
                child: Row(
                  children: [
                    Image.asset(
                      height: 30,
                      width: 30,
                      "assets/facebookLogo.png",
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                        width:
                            16.0), // Adjust the width of the space between the logo and text
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Continue With Facebook",
                          style: TextStyle(
                            fontFamily: 'CircularStd-Bold',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
