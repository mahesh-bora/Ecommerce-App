import 'package:ecommerce_app/screens/setting/my_favorite_screen.dart';
import 'package:ecommerce_app/widgets/custom_wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D182A),
        centerTitle: true,
        title: const Text(
          'Wishlist',
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
            const Text('Your Wishlist',
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
                return CustomWishlistCard(
                  title: 'My Favourite',
                  onEdit: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FavoriteProductsScreen();
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
