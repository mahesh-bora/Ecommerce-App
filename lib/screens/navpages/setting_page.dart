import 'package:ecommerce_app/screens/login%20&%20onboarding/splash.dart';
import 'package:ecommerce_app/screens/setting/address_page.dart';
import 'package:ecommerce_app/screens/setting/help_page.dart';
import 'package:ecommerce_app/screens/setting/payment_page.dart';
import 'package:ecommerce_app/screens/setting/support_page.dart';
import 'package:ecommerce_app/screens/setting/wishlist_page.dart';
import 'package:ecommerce_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF201C2C),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),

                  //user profile
                  const SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius: 50,
                    ),
                  ),

                  //user details
                  const SizedBox(height: 30),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF1D182A),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //user details
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold.ttf',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'dummy.user@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold.ttf',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+91 9876543210',
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold.ttf',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //edit button
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                fontFamily: 'CircularStd-Bold.ttf',
                                color: const Color(0xFF8E6CEF),
                                fontSize: 18,
                              ),
                            )),
                      ],
                    ),
                  ),

                  //buttons
                  const SizedBox(height: 30),
                  CustomButton(
                    title: 'Address',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddressScreen();
                      }));
                    },
                  ),

                  const SizedBox(height: 10),
                  CustomButton(
                    title: 'Wishlist',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return WishlistScreen();
                      }));
                    },
                  ),

                  const SizedBox(height: 10),
                  CustomButton(
                    title: 'Payment',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PaymentScreen();
                      }));
                    },
                  ),

                  const SizedBox(height: 10),
                  CustomButton(
                    title: 'Help',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HelpScreen();
                      }));
                    },
                  ),

                  const SizedBox(height: 10),
                  CustomButton(
                    title: 'Support',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SupportScreen();
                      }));
                    },
                  ),

                  const SizedBox(height: 10),
                  //sign out button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ));
                    },
                    child: const Text(
                      'Sign out',
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
