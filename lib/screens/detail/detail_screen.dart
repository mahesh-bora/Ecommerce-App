import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/widgets/custom_review_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import carousel library

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  // ... Declare variables for product data, selected size, color, etc.

  final List<String> imgList = [
    'assets/man1.png',
    'assets/man1.png',
    'assets/man1.png',
    'assets/man1.png',
  ];

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201C2C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF201C2C),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () => () {}, // Implement favorite logic
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel Slider
            SizedBox(
              height: 300,
              child: CarouselSlider(
                items: imgList
                    .map((item) => Image.asset(
                          item,
                          fit: BoxFit.fitHeight,
                          width: MediaQuery.of(context).size.width * 0.8,
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Product title and price
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Name',
                    style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$148',
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      fontSize: 18,
                      color: Color(0xFF8E6CEF),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Size Selection
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Card(
                // Display selected size and color, open bottom sheet on tap
                color: const Color(0xFF2B2733),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Size',
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 150),
                      // Display selected size
                      const Text(
                        'S',
                        style: TextStyle(
                            fontFamily: 'CircularStd-Bold.ttf',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      // Show dropdown arrow
                      IconButton(
                        // Implement size selection logic
                        onPressed: () {
                          showSizePickerBottomSheet(context);
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Color Selection
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Card(
                // Display selected size and color, open bottom sheet on tap
                color: const Color(0xFF2B2733),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 150),
                      // Display selected color in filled circle
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB3B68B),
                          shape: BoxShape.circle,
                        ),
                      ),
                      // Show dropdown arrow
                      IconButton(
                        // Implement Color selection logic
                        onPressed: () {
                          showColorPickerBottomSheet(context);
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Quantity Selection
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Card(
                // Display selected size and color, open bottom sheet on tap
                color: const Color(0xFF2B2733),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 50),
                      // plus button
                      IconButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(10),
                          backgroundColor: const Color(0xFF8E6CEF),
                        ),

                        // Implement Quantity selection logic
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                      //count of quantity
                      Text(
                        '$count',
                        style: const TextStyle(
                            fontFamily: 'CircularStd-Bold.ttf',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      // minus button
                      IconButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(10),
                          backgroundColor: const Color(0xFF8E6CEF),
                        ),
                        onPressed: () {
                          setState(() {
                            if (count > 1) {
                              count--;
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Display product description
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Text(
                'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 15,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Display shipping and return information
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shipping & Returns',
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Free standard shipping and free 60-day returns.',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Display reviews with star ratings and feedback
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reviews',
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      // Display star rating
                      Text(
                        '4.5 Rating',
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Number of reviews
                  Text(
                    '231 reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Display review cards
                  const CustomReviewCard(),
                  const CustomReviewCard(),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: const Color(0xFF201C2C),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8E6CEF),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CartScreen();
                  },
                ),
              );
            }, // Implement add to cart logic
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$148',
                  style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 15),
                ),
                SizedBox(width: 10),
                Text(
                  'Add to Bag',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Display color picker bottom sheet
  void showColorPickerBottomSheet(BuildContext context) {
    Color selectedColor = Colors.orange;

    showModalBottomSheet(
      backgroundColor: const Color(0xFF201C2C),
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 50.0),
                  const Text(
                    'Color',
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the bottom sheet
                    },
                    icon: const Icon(Icons.close),
                    color: Colors.white,
                    iconSize: 30,
                  )
                ],
              ),

              const SizedBox(height: 20.0),
              // Replace this with your actual color list
              _buildColorItem(Colors.lime, 'Lemon', selectedColor),
              _buildColorItem(Colors.black, 'Black', selectedColor),
              _buildColorItem(Colors.red, 'Red', selectedColor),
              _buildColorItem(Colors.yellow, 'Yellow', selectedColor),
              _buildColorItem(Colors.blue, 'Blue', selectedColor),
            ],
          ),
        );
      },
    );
  }

  Widget _buildColorItem(Color color, String name, Color selectedColor) {
    bool isSelected = color == selectedColor;
    return InkWell(
      onTap: () {
        // Handle color selection here
        setState(() {
          selectedColor = color;
          isSelected = true;
        });
        Navigator.pop(context); // Close the bottom sheet
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Card(
          color: isSelected ? const Color(0xFF8E6CEF) : const Color(0xFF2B2733),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 150),
                // Display selected color in filled circle
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                // Show dropdown arrow
                if (isSelected) // Show right icon only for selected card
                  const Icon(Icons.check, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Display size picker bottom sheet
  void showSizePickerBottomSheet(BuildContext context) {
    String selectedSize = 'S'; // Initialize with a default selection

    showModalBottomSheet(
      backgroundColor: const Color(0xFF201C2C),
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      builder: (context) {
        return SizedBox(
            width: double.infinity,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const SizedBox(height: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 50.0),
                      const Text(
                        'Color',
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the bottom sheet
                        },
                        icon: const Icon(Icons.close),
                        color: Colors.white,
                        iconSize: 30,
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  // Size items with selection logic
                  _buildSizeItem('S', selectedSize),
                  _buildSizeItem('M', selectedSize),
                  _buildSizeItem('L', selectedSize),
                  _buildSizeItem('XL', selectedSize),
                ],
              )
            ]));
      },
    );
  }

  Widget _buildSizeItem(String size, String selectedSize) {
    bool isSelected = size == selectedSize;

    return InkWell(
      onTap: () {
        // Update selected size and close bottom sheet
        setState(() {
          selectedSize = size;
        });
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Card(
          color: isSelected ? const Color(0xFF8E6CEF) : const Color(0xFF2B2733),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  size,
                  style: const TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                if (isSelected) const Icon(Icons.check, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
