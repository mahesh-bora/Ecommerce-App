import 'package:ecommerce_app/screens/cart/checkout_screen.dart';
import 'package:ecommerce_app/screens/navpages/mainpage.dart';
import 'package:ecommerce_app/widgets/custom_cart_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF201C2C),
        leading: const BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF201C2C),
      body: _value
          ? Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: const Text("Notification",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Image.asset("assets/parcel.png"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Your Cart is Empty",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: 210,
                  decoration: const BoxDecoration(
                      border: Border.symmetric(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100.0), // Adjust the radius as needed
                      ),
                      color: Color(0xFF8e6dee)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Explore Categories",
                        style: TextStyle(
                          fontFamily: 'CircularStd-Bold',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Remove All",
                            style: TextStyle(
                              fontFamily: 'CircularStd-Bold',
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const CartCard();
                          }),
                    ]),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          //subtotal row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20.0,
                                ),
                              ),
                              const Text(
                                "\$200",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //shipping cost row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping Cost",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20.0,
                                ),
                              ),
                              const Text(
                                "\$8.00",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Tax row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tax",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20.0,
                                ),
                              ),
                              const Text(
                                "\$0.00",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Total cost row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20.0,
                                ),
                              ),
                              const Text(
                                "\$208",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Bold',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),

                          //coupon code
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF2B2733),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Iconsax.discount_shape,
                                    color: Color(0xFF5FB567),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                          fontFamily: 'CircularStd-Bold',
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 16.0,
                                        ),
                                        hintText: 'Enter coupon code',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(10),
                                      backgroundColor: const Color(0xFF8E6CEF),
                                    ),
                                    onPressed: () {},
                                    icon: const Icon(
                                      size: 30,
                                      Icons.navigate_next_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),

      // Bottom Navigation Bar
      bottomNavigationBar: _value
          ? null
          : BottomAppBar(
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
                          return const CheckoutScreen();
                        },
                      ),
                    );
                  }, // Implement add to cart logic
                  child: const Text(
                    'Checkout',
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
    );
  }
}
