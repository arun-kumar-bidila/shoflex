import 'package:shoflex/models/cart_model.dart';

class Order {
  final String orderId;
  final List<CartItem> items;
  final double totalAmount;
  final DateTime orderDate;

  Order({
    required this.orderId,
    required this.items,
    required this.totalAmount,
    required this.orderDate,
  });
}
