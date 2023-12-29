import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String address;
  final VoidCallback onEdit;

  const AddressCard({
    Key? key,
    required this.address,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF2B2733),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // User details
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(
                address,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'CircularStd-Bold.ttf',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Edit button
          TextButton(
            onPressed: onEdit,
            child: const Text(
              'Edit',
              style: TextStyle(
                fontFamily: 'CircularStd-Bold.ttf',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
