import 'package:flutter/material.dart';
import 'package:flutter_deeplink/components/review/review_list.dart';

import 'components/review/review_card.dart';

class ProductReview extends StatelessWidget {
  String productId;

  ProductReview(this.productId, {super.key});

  final List<ReviewCard> reviews = [
    ReviewCard(
      reviewerName: 'John Doe',
      rating: 4.5,
      reviewText: 'This is a great product! I highly recommend it.',
      reviewDate: DateTime.now().subtract(Duration(days: 10)), // 10 days ago
    ),
    ReviewCard(
      rating: 5.0,
      reviewText: 'Absolutely love this product! It exceeded my expectations.',
      reviewDate: DateTime.now().subtract(Duration(days: 5)),
      reviewerName: '', // 5 days ago
    ),
    ReviewCard(
      rating: 3.0,
      reviewText:
          'The product is good, but it could be improved with better X.',
      reviewDate: DateTime.now(), reviewerName: '', // Today
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReviewList(
        reviews: reviews,
        overallRating: calculateOverallRating(reviews),
      ),
    );
  }
}
