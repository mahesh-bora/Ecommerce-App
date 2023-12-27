import 'package:flutter/material.dart';

import '../product_grid.dart';

class ShopByCategory extends StatefulWidget {
  ShopByCategory({super.key});

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201C2C),
        body: Container(
          padding: EdgeInsets.all(20),
          // margin: EdgeInsets.symmetric(),
          // padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  // Add your onTap functionality here
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/back_button.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  "Shop By Categories",
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductGrid()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  margin: const EdgeInsets.only(),
                  child: Flexible(
                    child: Container(
                      child: Column(
                        children: [
                          Flexible(
                            child: SizedBox(
                              height:
                                  500, // Set a fixed height or adjust as needed
                              child: ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                separatorBuilder: (context, index) => SizedBox(
                                    height: 5), // Adjust spacing as needed
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 200,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF342F3F),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          photoUrls[index],
                                          fit: BoxFit.cover,
                                          height: 50,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          category[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
