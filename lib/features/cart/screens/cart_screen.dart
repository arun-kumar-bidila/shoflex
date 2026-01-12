import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/cart/widgets/cart_item_tile.dart';
import 'package:shoflex/features/cart/widgets/cart_summary_section.dart';
import 'package:shoflex/features/cart/widgets/empty_cart.dart';
import 'package:shoflex/providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = "/cart-screen";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: cart.cartItems.isEmpty
                  ? const EmptyCart()
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          child: Row(
                            children: [
                              // Back Button (LEFT)
                              InkWell(
                                onTap: () => Navigator.pop(context),
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

                              // CENTER TITLE
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Cart",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(
                                width: 44,
                                height: 44,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                cart.clearCart();
                              },
                              child: Text(
                                "Remove All",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(16),
                            itemCount: cart.cartItems.length,
                            itemBuilder: (context, index) {
                              final item =
                                  cart.cartItems.values.toList()[index];

                              return CartItemTile(cartItem: item);
                            },
                          ),
                        ),

                        // Summary Section
                        CartSummarySection(),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
