import 'package:ecommerce_app/model/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: const Color(0xFF342F3F),
        elevation: 4,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image with no bottom rounding
                ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8.0)),
                    child: Image.asset(
                      product.imageUrl,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                    // Image.network(
                    //   product.imageUrl,
                    //   height: 200,
                    //   width: double.infinity,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontFamily: 'CircularStd-Bold.ttf',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      Text(
                        '\$${product.price}',
                        style: const TextStyle(
                            fontFamily: 'CircularStd-Bold.ttf',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Favorite button in the top right corner
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: onFavoriteTap, // Trigger favorite function
                ),
              ),
            ),
          ],
        ),
      ),
    );

    //   GestureDetector(
    //   onTap: onTap,
    //   child: Card(
    //     color: Color(0xFF342F3F),
    //     elevation: 4,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Stack(
    //           children: [
    //             ClipRRect(
    //               borderRadius:
    //                   BorderRadius.vertical(top: Radius.circular(8.0)),
    //               child: Image.network(
    //                 product.imageUrl,
    //                 //height: 200,
    //                 width: double.infinity,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.topRight,
    //               child: IconButton(
    //                 icon: Icon(
    //                   product.isFavorite
    //                       ? Icons.favorite
    //                       : Icons.favorite_border,
    //                   color: Colors.red,
    //                 ),
    //                 onPressed: () {},
    //                 // Implement favorite button logic here
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(height: 8),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //           child: Container(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   product.title,
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 16,
    //                   ),
    //                 ),
    //                 Text(
    //                   '\$${product.price}',
    //                   style: TextStyle(
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         SizedBox(height: MediaQuery.of(context).padding.bottom),
    //       ],
    //     ),
    //   ),
    // );
  }
}
