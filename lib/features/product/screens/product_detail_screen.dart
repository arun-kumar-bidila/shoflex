import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/core/utils/app_data.dart';
import 'package:shoflex/features/product/widgets/product_color_selector.dart';
import 'package:shoflex/features/product/widgets/product_description_widget.dart';
import 'package:shoflex/features/product/widgets/product_image_section.dart';
import 'package:shoflex/features/product/widgets/product_info_widget.dart';
import 'package:shoflex/features/product/widgets/product_reviews_widget.dart';

import 'package:shoflex/features/product/widgets/product_size_selector.dart';
import 'package:shoflex/models/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  static const String routeName = "/product-detail";
  final Product product;

  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late String selectedSize;
  late String selectedColor;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.product.sizes.first;
    selectedColor = widget.product.colors.first;
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        alignment: Alignment.center,
        height: 52,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "₹${product.price.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Add to Bag",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImageSection(
                product: product,
              ),
              ProductInfoWidget(product: product),
              ProductSizeSelector(
                sizes: product.sizes,
              ),
              ProductColorSelector(colors: product.colors),
              ProductDescriptionWidget(product: product),
              ProductReviewsWidget(product: product, reviews: reviews)
            ],
          ),
        ),
      ),
    );
  }
}
