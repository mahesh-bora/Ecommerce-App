import 'package:ecommerce_app/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';
import '../widgets/custom_product_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<String> photos = [
    'assets/man1.png',
    'assets/slipper.png',
    'assets/man1.png',
  ];

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF201C2C),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF201C2C),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/back_button.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Hoodies(240)",
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Adjust desired number of columns
                  childAspectRatio:
                      0.7, // Adjust width-to-height ratio of cards
                ),
                itemCount: _favoriteProducts.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
