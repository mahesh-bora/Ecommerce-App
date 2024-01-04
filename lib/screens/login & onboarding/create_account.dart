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
    return Scaffold(
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
              const Text(
                "Create Account",
                style: TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF342F3F),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "First Name",
                    hintText: "First Name",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                    labelStyle:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF342F3F), // Set the background color here
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
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
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF342F3F), // Set the background color here
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
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
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF342F3F), // Set the background color here
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
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
              const SizedBox(
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()),
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
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the CreateAccountScreen when tapped
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()),
                      );
                    },
                    child: const Text(
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
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
