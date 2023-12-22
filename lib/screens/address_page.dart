import 'package:ecommerce_app/widgets/custom_address_card.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Address'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: AddressCard(
                  address: '2715 Ash Dr. San Jose, South Dakota 83475',
                  onEdit: () {
                    Navigator.pushNamed(context, '/edit_address');
                  },
                ),
              );
            }),
      ),
    );
  }
}
