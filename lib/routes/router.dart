import 'package:flutter/material.dart';
import 'package:shoflex/features/auth/screens/create_account.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';
import 'package:shoflex/features/auth/screens/forgot_password.dart';
import 'package:shoflex/features/auth/screens/password_login.dart';

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
    // case Bottombar.routeName:
    //   return MaterialPageRoute(
    //       settings: routeSettings, builder: (_) => Bottombar());
    // case EmailVerification.routeName:
    //   return MaterialPageRoute(
    //       settings: routeSettings, builder: (_) => EmailVerification());
    case ForgotPassword.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => ForgotPassword());
    // case ResetPassword.routeName:
    //   return MaterialPageRoute(
    //       settings: routeSettings, builder: (_) => ResetPassword());
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
