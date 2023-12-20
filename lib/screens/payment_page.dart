import 'package:ecommerce_app/widgets/custom_payment_card.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //User Saved Cards
            Text('Cards',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return CustomPaymentCard(
                  cardNumber: '**** 1234',
                  onEdit: () {
                    Navigator.pushNamed(context, '/edit_card');
                  },
                );
              },
            ),

            //User Online Payment Methods
            Text('Paypal',
                style: TextStyle(
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
                      Navigator.pushNamed(context, '/edit_card');
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
