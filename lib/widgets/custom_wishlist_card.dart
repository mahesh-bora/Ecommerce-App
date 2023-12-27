import 'package:flutter/material.dart';

class CustomWishlistCard extends StatelessWidget {
  final String title;
  final VoidCallback onEdit;

  const CustomWishlistCard({
    Key? key,
    required this.title,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF1D182A),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // User details
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                //width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Price: 1000',
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Edit button
            IconButton(
              onPressed: onEdit,
              icon: const Icon(
                color: Colors.white,
                Icons.navigate_next_outlined,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
