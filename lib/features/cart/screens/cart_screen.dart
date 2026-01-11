import 'package:flutter/material.dart';
import 'package:shoflex/features/cart/widgets/empty_cart.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = "/cart-screen";
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return EmptyCart();
  }
}
