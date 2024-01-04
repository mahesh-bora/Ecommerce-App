import 'package:flutter/material.dart';

import 'create_account.dart';
import 'final_login.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF201C2C),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF201C2C),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign In",
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
                  color:
                      const Color(0xFF342F3F), // Set the background color here
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Password",
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
                          builder: (context) => const FinalLogin()),
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
            ],
          ),
        ),
      ),
    );
  }
}
