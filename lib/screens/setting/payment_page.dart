import 'package:ecommerce_app/screens/setting/edit_Payment.dart';
import 'package:ecommerce_app/widgets/custom_payment_card.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF201C2C),
        centerTitle: true,
        title: const Text(
          'Payment',
          style: TextStyle(
              fontFamily: 'CircularStd-Bold.ttf', color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //User Saved Cards
            const Text('Cards',
                style: TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return CustomPaymentCard(
                  cardNumber: '**** 1234',
                  onEdit: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const EditPaymentScreen();
                    }));
                  },
                );
              },
            ),

            //User Online Payment Methods
            const Text('Paypal',
                style: TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return CustomPaymentCard(
                    cardNumber: 'User.email@gmail.com',
                    onEdit: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const EditPaymentScreen();
                      }));
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
