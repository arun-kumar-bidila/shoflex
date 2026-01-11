import 'package:flutter/material.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';
import 'package:shoflex/features/cart/widgets/empty_cart.dart';
import 'package:shoflex/features/orders/screens/order_placed.dart';
import 'package:shoflex/features/orders/widgets/no_orders.dart';
import 'package:shoflex/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoflex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: OrderPlaced(),
    );
  }
}
