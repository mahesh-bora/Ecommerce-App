import 'package:ecommerce_app/model/product.dart';
import 'package:ecommerce_app/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class FavoriteProductsScreen extends StatefulWidget {
  const FavoriteProductsScreen({super.key});

  @override
  State<FavoriteProductsScreen> createState() => _FavoriteProductsScreenState();
}

class _FavoriteProductsScreenState extends State<FavoriteProductsScreen> {
  final List<Product> _favoriteProducts = [
    Product(
      imageUrl: 'assets/man1.png',
      title: 'Product 1',
      price: 199,
      isFavorite: true,
    ),
    Product(
      imageUrl: 'assets/slipper.png',
      title: 'Product 2',
      price: 250,
      isFavorite: true,
    ),
    Product(
      imageUrl: 'assets/man1.png',
      title: 'Product 3',
      price: 250,
      isFavorite: true,
    ),
  ]; // Keep track of favorite products

  // Implementation for updating favorite products (e.g., through user interaction)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(
            fontFamily: 'CircularStd-Bold.ttf',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust desired number of columns
            childAspectRatio: 0.7, // Adjust width-to-height ratio of cards
          ),
          itemCount: _favoriteProducts.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: ProductCard(
              onFavoriteTap: () {
                // Update favorite state of product
                setState(() {
                  _favoriteProducts[index].isFavorite =
                      !_favoriteProducts[index].isFavorite;
                });
              },
              product: _favoriteProducts[index],
              onTap: () {
                // Navigate to detail page for selected product
              },
            ),
          ),
        ),
      ),
    );
  }
}
