import 'package:flutter/material.dart';
import 'package:shoflex/models/product_model.dart';
import 'package:shoflex/models/review_model.dart';

class ProductReviewsWidget extends StatelessWidget {
  final Product product;
  final List<Review> reviews;

  const ProductReviewsWidget({
    super.key,
    required this.product,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reviews",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: "Gabarito"),
          ),
          const SizedBox(height: 16),
          Text(
            "${product.rating} Ratings",
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "Gabarito"),
          ),
          const SizedBox(height: 16),
          Text(
            "213 Reviews",
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),

          /// Reviews
          Column(
            children: reviews.map((review) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFFF5F5F5),
                          child: Image(
                            image: AssetImage("assets/dp.png"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                review.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12,fontFamily: "Gabarito"),
                              ),
                              Row(
                                children: List.generate(5, (starIndex) {
                                  return Icon(
                                    Icons.star,
                                    size: 14,
                                    color: starIndex < review.rating
                                        ? Colors.blue
                                        : Colors.grey.shade300,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      review.comment,
                      style: const TextStyle(
                          color: Colors.black54,
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      review.date,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
