import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class TrackOrderScreen extends StatelessWidget {
  static const String routeName = "/track-order-screen";
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                        "Order #45879",
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontFamily: "Gabarito"),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 44,
                    height: 44,
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),
              // Timeline 
              buildTimelineStep("Delivered", "28 May",
                  isCompleted: false, isLast: false),
              buildTimelineStep("Shipped", "28 May",
                  isCompleted: true, isLast: false),
              buildTimelineStep("Order Confirmed", "28 May",
                  isCompleted: true, isLast: false),
              buildTimelineStep("Order Placed", "28 May",
                  isCompleted: true, isLast: true),

              const SizedBox(height: 25),

              const Text("Order Items",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,fontFamily: "Gabarito")),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.fillColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/orders.svg', width: 24),
                    const SizedBox(width: 16),
                    const Text("4 items",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text("View All",
                          style: TextStyle(
                              color: AppColors.buttonColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              fontFamily: "Gabarito")),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text("Shipping details",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16,fontFamily: "Gabarito")),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.fillColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "2715 Ash Dr. San Jose, South Dakota 83475",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "121-224-7890",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTimelineStep(String title, String date,
      {required bool isCompleted, required bool isLast}) {
    return IntrinsicHeight(
      child: Row(
        children: [
          // Left Side: Icon and Line
          Column(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCompleted
                      ? AppColors.buttonColor
                      : const Color(0xFFE3F2FD),
                ),
                child: isCompleted
                    ? const Icon(Icons.check, color: Colors.white, size: 16)
                    : const SizedBox(),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: AppColors.fillColor,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          // Right Side: Text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isCompleted ? Colors.black : Colors.black54,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isCompleted ? Colors.black : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
