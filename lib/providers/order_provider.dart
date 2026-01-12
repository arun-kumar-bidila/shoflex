import 'package:flutter/material.dart';
import 'package:shoflex/models/cart_model.dart';
import 'package:shoflex/models/order_model.dart';

enum OrderStatus { pending, completed, cancelled }

class OrderProvider with ChangeNotifier {
  final List<Order> _orders = [];

  List<Order> get orders => List.unmodifiable(_orders);

  /// Place an order from a list of cart items
  void placeOrder({
    required List<CartItem> cartItems,
    double? total, // optional, can calculate inside
  }) {
    if (cartItems.isEmpty) return;

    final calculatedTotal = total ?? _calculateTotal(cartItems);

    final newOrder = Order(
      orderId: DateTime.now().millisecondsSinceEpoch.toString(),
      items: List<CartItem>.from(cartItems), // clone to avoid reference issues
      totalAmount: calculatedTotal,
      orderDate: DateTime.now(),
       // new field for order status
    );

    _orders.insert(0, newOrder);
    notifyListeners();
  }

  /// Helper method to calculate total if not provided
  double _calculateTotal(List<CartItem> items) {
    return items.fold(0, (sum, item) => sum + (item.product.price * item.quantity));
  }



  /// Clear all orders
  void clearOrders() {
    _orders.clear();
    notifyListeners();
  }
}
