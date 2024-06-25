import 'package:flutter/material.dart';
import 'package:flutter_deeplink/components/review/review_card.dart';

class ReviewList extends StatelessWidget {
  final List<ReviewCard> reviews;
  final double overallRating; // Calculate average rating from reviews list

  const ReviewList({required this.reviews, required this.overallRating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Overall Rating:',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 24.0,
            ),
            Text(
              overallRating.toStringAsFixed(1),
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        ListView.builder(
          shrinkWrap: true,
          // Prevent excessive scrolling
          physics: NeverScrollableScrollPhysics(),
          // Disable scrolling if few reviews
          itemCount: reviews.length,
          itemBuilder: (context, index) => reviews[index],
        ),
      ],
    );
  }
}
