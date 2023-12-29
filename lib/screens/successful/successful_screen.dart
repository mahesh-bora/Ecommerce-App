import 'package:ecommerce_app/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E6CEF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFF8E6CEF),
              child: SizedBox(
                  child: Image.asset(
                'assets/successful.png',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
              )),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: const Color(0xFF1D182A),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Order Placed \nSuccessfully',
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'You will recieve an email confirmation',
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold',
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E6CEF),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ProductDetailScreen();
                          },
                        ),
                      );
                    }, // Implement add to cart logic
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          'See Order Details',
                          style: TextStyle(
                              fontFamily: 'CircularStd-Bold.ttf',
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1)
              ],
            ),
          )
        ],
      ),
    );
  }
}
