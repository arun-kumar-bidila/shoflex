import 'package:flutter/material.dart';
import 'package:shoflex/features/auth/screens/create_account.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';
import 'package:shoflex/features/auth/screens/forgot_password.dart';
import 'package:shoflex/features/auth/screens/password_login.dart';
import 'package:shoflex/features/cart/screens/cart_screen.dart';
import 'package:shoflex/features/product/screens/product_detail_screen.dart';
import 'package:shoflex/models/product_model.dart';
import 'package:shoflex/search/screens/empty_search.dart';
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
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Bottombar());

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
