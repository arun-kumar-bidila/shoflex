import 'package:flutter/material.dart';
import 'package:shoflex/models/product_model.dart';

class ProductDescriptionWidget extends StatelessWidget {
  final Product product;

  const ProductDescriptionWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text(
            product.description,
            style: const TextStyle(
              color: Colors.black54,
              height: 1.5,
              fontSize: 12,
              fontWeight: FontWeight.w500 
            ),
          ),
          const SizedBox(height: 24),
          
          
          const Text(
            "Shipping & Returns",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          
          // Return Conditions
          Text(
            product.returnCondition,
           style: const TextStyle(
              color: Colors.black54,
              height: 1.4,
              fontSize: 12,
              fontWeight: FontWeight.w500 
            ),
          ),
        ],
      ),
    );
  }
}