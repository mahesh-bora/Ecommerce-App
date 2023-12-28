import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201C2C),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
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
                  "Hoodies(240)",
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 150,
                  ),
                  itemCount: photos.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
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
                                  //  height: 10,
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

                    /*Container(
                      width: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF342F3F),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            photos[index],
                            fit: BoxFit.fill,
                            height: 150,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Men's Harrington Jacket",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '\$148.0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    );*/
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
