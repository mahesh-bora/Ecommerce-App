import 'package:ecommerce_app/screens/successful/successful_screen.dart';
import 'package:ecommerce_app/widgets/custom_checkout_screen_card.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF1D182A),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontFamily: 'CircularStd-Bold.ttf',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                CustomCheckoutCard(
                  title: 'Shipping Address',
                  title2: 'John Doe 123, Main Street, New York, NY-123456',
                  onEdit: () {},
                ),
                CustomCheckoutCard(
                  title: 'Payment Method',
                  title2: '**** 1234',
                  onEdit: () {},
                ),
              ]),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  ],
                ),
              ),
            ),
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
                    return const SuccessfulScreen();
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
                  'Place Order',
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
}
