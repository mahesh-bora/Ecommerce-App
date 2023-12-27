import 'package:ecommerce_app/screens/setting/edit_address_screen.dart';
import 'package:ecommerce_app/widgets/custom_address_card.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF201C2C),
        title: const Text(
          'Address',
          style: TextStyle(
              fontFamily: 'CircularStd-Bold.ttf', color: Colors.white),
        ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EditAddressScreen();
                    }));
                  },
                ),
              );
            }),
      ),
    );
  }
}
