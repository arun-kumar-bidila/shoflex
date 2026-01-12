import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shoflex/core/constants/app_colors.dart';

import 'package:shoflex/features/cart/widgets/payment_summary_section.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = "/payment-screen";
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                children: [
                  // Back Button (LEFT)
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.fillColor,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/backarrow.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),

                  // CENTER TITLE
                  Expanded(
                    child: Center(
                      child: Text(
                        "Checkout",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontFamily: "Gabarito"
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 44,
                    height: 44,
                  ),
                ],
              ),
            ),
              SizedBox(
                   
                    height: 20,
                  ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shipping Address",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black54),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "2715 Ash Dr. San Jose, Dak",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ]),
                          ),
                          SvgPicture.asset(
                            "assets/forwardarrow.svg",
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 16,
                      ),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Payment Method",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.black54),
                                  ),
                                  SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Text(
                                        "**** 4187",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                         style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                        "assets/pay.svg",
                                        width: 20,
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          SvgPicture.asset(
                            "assets/forwardarrow.svg",
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                   
                    
                  ],
                ),
              ),
            ),
            PaymentSummarySection(),
          ],
        ),
      ),
    );
  }
}
