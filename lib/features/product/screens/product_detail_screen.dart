import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/core/utils/app_data.dart';
import 'package:shoflex/features/cart/screens/cart_screen.dart';
import 'package:shoflex/features/product/widgets/product_color_selector.dart';
import 'package:shoflex/features/product/widgets/product_description_widget.dart';
import 'package:shoflex/features/product/widgets/product_image_section.dart';
import 'package:shoflex/features/product/widgets/product_info_widget.dart';
import 'package:shoflex/features/product/widgets/product_quantity_selector.dart';
import 'package:shoflex/features/product/widgets/product_reviews_widget.dart';

import 'package:shoflex/features/product/widgets/product_size_selector.dart';
import 'package:shoflex/models/product_model.dart';
import 'package:shoflex/providers/cart_provider.dart';

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
      bottomNavigationBar: GestureDetector(
        onTap: () {
          final cartProvider = context.read<CartProvider>();

          cartProvider.addToCart(
            product: product,
            size: selectedSize,
            color: selectedColor,
          );

          Navigator.pushNamed(context, CartScreen.routeName);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
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
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
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
                initialSize: selectedSize,
                onSizeSelected: (size) {
                  setState(() {
                    selectedSize = size;
                  });
                },
              ),
              ProductColorSelector(
                colors: product.colors,
                initialColor: selectedColor,
                onColorSelected: (color) {
                  setState(() {
                    selectedColor = color;
                  });
                },
              ),
              ProductQuantitySelector(
                quantity: quantity,
                onIncrement: () {
                  setState(() {
                    quantity++;
                  });
                },
                onDecrement: () {
                  if (quantity > 1) {
                    setState(() {
                      quantity--;
                    });
                  }
                },
              ),
              ProductDescriptionWidget(product: product),
              ProductReviewsWidget(product: product, reviews: reviews)
            ],
          ),
        ),
      ),
    );
  }
}
