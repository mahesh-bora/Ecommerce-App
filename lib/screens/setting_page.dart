import 'package:ecommerce_app/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 20.0, vertical: 15.0),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            //user profile
            const SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
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
                color: Colors.grey[200],
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
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'dummy.user@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '+91 9876543210',
                          style: TextStyle(
                            color: Colors.black,
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
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),

            //buttons
            const SizedBox(height: 30),
            CustomButton(title: 'Address', navigateToRoute: '/address'),

            const SizedBox(height: 10),
            CustomButton(title: 'Wishlist', navigateToRoute: '/wishlist'),

            const SizedBox(height: 10),
            CustomButton(title: 'Payment', navigateToRoute: '/payment'),

            const SizedBox(height: 10),
            CustomButton(title: 'Help', navigateToRoute: '/help'),

            const SizedBox(height: 10),
            CustomButton(title: 'Support', navigateToRoute: '/support'),

            const SizedBox(height: 10),
            //sign out button
            TextButton(
              onPressed: () {},
              child: const Text(
                'Sign out',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
