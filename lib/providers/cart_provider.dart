import 'package:flutter/material.dart';
import 'package:shoflex/models/cart_model.dart';
import 'package:shoflex/models/product_model.dart';

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _cartItems = {};

  Map<String, CartItem> get cartItems => _cartItems;

  double get subTotal => _cartItems.values.fold(
        0.0,
        (sum, item) => sum + item.totalAmount,
      );

  double get shippingCost => _cartItems.isEmpty ? 0 : 8.0;

  double get tax => 0.0;

  double get total => subTotal + shippingCost + tax;

  get totalPrice => null;

  /// Unique key based on product + attributes
  String _generateKey(Product product, String size, String color) {
    return '${product.name}-$size-$color';
  }

  void addToCart({
    required Product product,
    required String size,
    required String color,
  }) {
    final key = _generateKey(product, size, color);

    if (_cartItems.containsKey(key)) {
      _cartItems[key]!.quantity++;
    } else {
      _cartItems[key] = CartItem(
        
        product: product,
        selectedSize: size,
        selectedColor: color,
      );
    }
    notifyListeners();
  }

  void increaseQty(String key) {
    _cartItems[key]!.quantity++;
    notifyListeners();
  }

  void decreaseQty(String key) {
    if (_cartItems[key]!.quantity > 1) {
      _cartItems[key]!.quantity--;
    } else {
      _cartItems.remove(key);
    }
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
