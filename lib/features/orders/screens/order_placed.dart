import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/widgets/custom_button.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonColor,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Center(
                child: Image.asset(
                  'assets/orderplaced.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                children: [
                  const Text(
                    'Order Placed\nSuccessfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'You will receive an email confirmation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: CustomButton(
                        buttonName: "See Order Details", onTap: () {}),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
