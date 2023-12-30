import 'package:ecommerce_app/screens/detail/detail_screen.dart';
import 'package:ecommerce_app/screens/navpages/bookmark.dart';
import 'package:ecommerce_app/screens/navpages/setting_page.dart';

import 'package:flutter/material.dart';

import '../navpages/shop_by_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedGender = 'Man';

  List<String> photoUrls = [
    'assets/hoodie.png',
    'assets/shoes.png',
    'assets/accessories.png',
    'assets/shorts.png',
    'assets/bag.png',
    'assets/slipper.png',
  ];

  List<String> photos = [
    'assets/man1.png',
    'assets/slipper.png',
    'assets/man1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF201C2C),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle the tap event, for example, navigate to the profile screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SettingPage()), // Replace with your profile screen widget
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/profile.png'),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF342F3F),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 25,
                                ),
                                DropdownButton<String>(
                                  value: selectedGender,
                                  dropdownColor: const Color(0xFF342F3F),
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 24,
                                  elevation: 16,
                                  style:
                                      const TextStyle(color: Color(0xFF342F3F)),
                                  underline: Container(
                                      // height: 1,
                                      // color: Colors.transparent,
                                      ),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedGender = newValue!;
                                    });
                                  },
                                  items: <String>['Man', 'Woman']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          color: value == selectedGender
                                              ? Colors
                                                  .white // White color for selected item
                                              : Colors
                                                  .white, // Default color for other items
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookmarkScreen()),
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/shopping.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchBar(
                hintText: "Search here",
                backgroundColor: Color(0xFF342F3F),
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(width: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopByCategory()),
                        );
                      },
                      child: const Text("See All",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: photoUrls.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(photoUrls[index]),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Top Selling",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(width: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopByCategory()),
                        );
                      },
                      child: const Text("See All",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10), // Adjust spacing as needed
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProductDetailScreen()),
                        );
                      },
                      child: Card(
                        color: const Color(0xFF342F3F),
                        elevation: 4,
                        child: Column(
                          children: [
                            // Image with no bottom rounding
                            ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(8.0)),
                                child: Image.asset(
                                  photos[index],
                                  height: 150,
                                  fit: BoxFit.cover,
                                )
                                // Image.network(
                                //   product.imageUrl,
                                //   height: 200,
                                //   width: double.infinity,
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Men's Harrington Jacket",
                                    style: TextStyle(
                                        fontFamily: 'CircularStd-Bold.ttf',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '\$148.0',
                                    style: TextStyle(
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
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Top Selling",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(width: 8),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShopByCategory()),
                        );
                      },
                      child: const Text("See All",
                          style: TextStyle(color: Colors.white))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10), // Adjust spacing as needed
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProductDetailScreen()),
                        );
                      },
                      child: Card(
                        color: const Color(0xFF342F3F),
                        elevation: 4,
                        child: Column(
                          children: [
                            // Image with no bottom rounding
                            ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(8.0)),
                                child: Image.asset(
                                  photos[index],
                                  height: 150,
                                  fit: BoxFit.cover,
                                )
                                // Image.network(
                                //   product.imageUrl,
                                //   height: 200,
                                //   width: double.infinity,
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Men's Harrington Jacket",
                                    style: TextStyle(
                                        fontFamily: 'CircularStd-Bold.ttf',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '\$148.0',
                                    style: TextStyle(
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final String hintText;
  final Color backgroundColor;
  final Color iconColor;

  const SearchBar({
    super.key,
    required this.hintText,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: iconColor,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
