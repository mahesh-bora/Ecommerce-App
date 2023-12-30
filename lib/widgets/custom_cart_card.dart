import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2B2733),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          // Image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/shirt.png",
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(width: 15.0),

          // Product details
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Men's Harrington Jacket",
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Text(
                      "Size - M",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Color - lemon",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "\$148",
                softWrap: true,
                style: TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  _buildMinusButton(),
                  _buildPlusButton(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMinusButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPlusButton() {
    return IconButton(
      icon: const Icon(Icons.remove, color: Colors.white),
      onPressed: () {},
    );
  }
}
