import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/cart/screens/payment_screen.dart';

import 'package:shoflex/providers/cart_provider.dart';

import 'package:shoflex/widgets/custom_button.dart';

class CartSummarySection extends StatelessWidget {
  const CartSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Subtotal",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "₹${cart.subTotal}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Shipping Cost",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "₹${cart.shippingCost}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tax",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "₹${cart.tax}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "₹${cart.total}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "Gabarito"),
              ),
            ],
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () {
             
            },
            borderRadius: BorderRadius.circular(14),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // LEFT ICON
                  SvgPicture.asset(
                    "assets/discountshape.svg",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 12),

                  // PLACEHOLDER TextField
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Coupon Code",
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // RIGHT ARROW BUTTON 
                  Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/forwardarrow.svg",
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                          Colors.white, 
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
              buttonName: "CheckOut",
              onTap: () {
                Navigator.pushNamed(context, PaymentScreen.routeName);
              })
        ],
      ),
    );
  }
}
