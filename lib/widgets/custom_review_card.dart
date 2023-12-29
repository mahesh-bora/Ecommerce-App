import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              // User Profile picture
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile.png'),
              ),

              const SizedBox(
                width: 15,
              ),

              // User name
              Expanded(
                child: const Text(
                  'Alexa Morgen',
                  style: TextStyle(
                    fontFamily: 'CircularStd-Bold.ttf',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //star rating
              RatingBar.builder(
                unratedColor: const Color(0xFF342F3F),
                glow: false,
                itemSize: 20,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Color(0xFF8E6CEF),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Review text
          Text(
            softWrap: true,
            'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories. ',
            style: TextStyle(
              height: 1.8,
              fontFamily: 'CircularStd-Bold.ttf',
              color: Colors.white.withOpacity(0.5),
              fontSize: 15,
            ),
          ),
          // Review date
          const SizedBox(
            height: 10,
          ),

          Text(
            '12days ago',
            style: TextStyle(
              fontFamily: 'CircularStd-Bold.ttf',
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
