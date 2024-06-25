import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ReviewCard extends StatelessWidget {
  final String reviewerName; // Optional
  final double rating;
  final String reviewText;
  final DateTime reviewDate; // Optional

  const ReviewCard({
    required this.rating,
    required this.reviewText,
    required this.reviewerName,
    required this.reviewDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200], // Light background
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 5.0)
        ], // Subtle shadow
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (reviewerName != null)
            Text(reviewerName, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5.0),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20.0, // Adjust star size
              ),
              Text(
                rating.toStringAsFixed(1), // Display rating with one decimal
                style: TextStyle(fontSize: 16.0),
              ),
              Spacer(),
              if (reviewDate != null)
                Text(DateFormat('dd MMM yyyy').format(reviewDate)),
              // More readable date format
            ],
          ),
          SizedBox(height: 10.0),
          Text(reviewText, style: TextStyle(fontSize: 14.0)),
        ],
      ),
    );
  }
}

double calculateOverallRating(List<ReviewCard> reviews) {
  double totalRating = 0.0;
  for (var review in reviews) {
    totalRating += review.rating;
  }
  return totalRating / reviews.length;
}
