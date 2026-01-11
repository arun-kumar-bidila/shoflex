import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/models/product_model.dart';

class ProductImageSection extends StatelessWidget {
  final Product product;
  const ProductImageSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fillColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/backarrow.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.fillColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/like.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.images.length,
              itemBuilder: (context, index) {
                final String image = product.images[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image.asset(image, fit: BoxFit.contain),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
