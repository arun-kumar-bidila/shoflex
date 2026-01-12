import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shoflex/features/auth/screens/email_login.dart';

import 'package:shoflex/core/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash-screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

   
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(
        context,
        EmailLogin.routeName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonColor,
      body: Center(
        child: const Center(
          child: Text(
            "Shoflex",
            style: TextStyle(
              fontFamily: "ClimateCrisis",
              fontSize: 44,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
