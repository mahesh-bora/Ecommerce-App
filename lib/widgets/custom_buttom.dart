import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF1D182A),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'CircularStd-Bold.ttf',
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.navigate_next_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
