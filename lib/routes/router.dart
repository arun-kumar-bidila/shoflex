import 'package:flutter/material.dart';
import 'package:shoflex/features/auth/screens/create_account.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';
import 'package:shoflex/features/auth/screens/forgot_password.dart';
import 'package:shoflex/features/auth/screens/password_login.dart';
import 'package:shoflex/features/cart/screens/cart_screen.dart';
import 'package:shoflex/features/cart/screens/payment_screen.dart';
import 'package:shoflex/features/orders/screens/order_placed.dart';
import 'package:shoflex/features/orders/screens/orders_screen.dart';
import 'package:shoflex/features/orders/screens/track_order_screen.dart';
import 'package:shoflex/features/product/screens/product_detail_screen.dart';

import 'package:shoflex/models/product_model.dart';
import 'package:shoflex/features/search/screens/empty_search.dart';
import 'package:shoflex/widgets/bottombar.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case CreateAccount.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => CreateAccount());
    case EmailLogin.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => EmailLogin());
    case PasswordLogin.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => PasswordLogin());
    case Bottombar.routeName:
      final int initialPage = routeSettings.arguments as int? ?? 0;

      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Bottombar(
          initialPage: initialPage,
        ),
      );

    case ForgotPassword.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => ForgotPassword());
    case CartScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => CartScreen());
    case ProductDetailScreen.routeName:
      final product = routeSettings.arguments as Product;

      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(product: product),
      );

    case EmptySearch.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => EmptySearch());
    case OrdersScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => OrdersScreen());
    case TrackOrderScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => TrackOrderScreen());
    case PaymentScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => PaymentScreen());
    case OrderPlaced.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => OrderPlaced());

    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => Scaffold(
                body: Center(
                  child: Text("This route doesn't exist "),
                ),
              ));
  }
}
