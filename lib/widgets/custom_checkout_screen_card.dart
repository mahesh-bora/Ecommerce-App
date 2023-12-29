import 'package:flutter/material.dart';

class CustomCheckoutCard extends StatelessWidget {
  final String title;
  final String title2;
  final VoidCallback onEdit;

  const CustomCheckoutCard({
    Key? key,
    required this.title,
    required this.title2,
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
          color: const Color(0xFF2B2733),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold',
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        title2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'CircularStd-Bold.ttf',
                          fontSize: 20,
                          color: Colors.white,
                        ),
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
