import 'package:flutter/material.dart';
import 'package:shoflex/models/cart_model.dart';
import 'package:shoflex/models/order_model.dart';

enum OrderStatus { pending, completed, cancelled }

class OrderProvider with ChangeNotifier {
  final List<Order> _orders = [];

  List<Order> get orders => List.unmodifiable(_orders);

  
  void placeOrder({
    required List<CartItem> cartItems,
    double? total, 
  }) {
    if (cartItems.isEmpty) return;

    final calculatedTotal = total ?? _calculateTotal(cartItems);

    final newOrder = Order(
      orderId: DateTime.now().millisecondsSinceEpoch.toString(),
      items: List<CartItem>.from(cartItems), 
      totalAmount: calculatedTotal,
      orderDate: DateTime.now(),
       
    );

    _orders.insert(0, newOrder);
    notifyListeners();
  }

 
  double _calculateTotal(List<CartItem> items) {
    return items.fold(0, (sum, item) => sum + (item.product.price * item.quantity));
  }



  
  void clearOrders() {
    _orders.clear();
    notifyListeners();
  }
}
