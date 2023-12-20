import 'package:ecommerce_app/widgets/custom_wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wishlist'),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 20.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //User Saved Cards
            Text('Your Wishlist',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return CustomWishlistCard(
                  title: 'My Favourite',
                  onEdit: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return WishlistScreen();
                    }));
                  },
                );
              },
            ),

            //User Online Payment Methods
          ],
        ),
      ),
    );
  }
}
