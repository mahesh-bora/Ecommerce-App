import 'package:flutter/material.dart';

import '../product_grid.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key});

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  List<String> photoUrls = [
    'assets/hoodie.png',
    'assets/shoes.png',
    'assets/accessories.png',
    'assets/shorts.png',
    'assets/bag.png',
    'assets/slipper.png',
  ];

  List<String> category = [
    'Hoodie',
    'Shoes',
    'Accessories',
    'Shorts',
    'Bag',
    'Slipper',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const Text(
              "Shop By Categories",
              style: TextStyle(
                fontFamily: 'CircularStd-Bold.ttf',
                color: Colors.white,
                fontSize: 35.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductGrid()),
                );
              },
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 5,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 5), // Adjust spacing as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF342F3F),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Image.asset(
                              photoUrls[index],
                              fit: BoxFit.cover,
                              height: 50,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              category[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
