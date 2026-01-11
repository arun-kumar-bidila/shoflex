import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/profile/widgets/profile_feature.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                // margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage("assets/dp.png"),
                    ),

                    const SizedBox(height: 25),

                    // User Info Card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.fillColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Gilbert Jones",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Gilbertjones001@gmail.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "121-224-7890",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.buttonColor),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Feature Tiles
                    ProfileFeature(
                      title: "Address",
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),

                    ProfileFeature(
                      title: "Wishlist",
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),

                    ProfileFeature(
                      title: "Payment",
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),

                    ProfileFeature(
                      title: "Help",
                      onTap: () {},
                    ),
                    const SizedBox(height: 12),

                    ProfileFeature(
                      title: "Support",
                      onTap: () {},
                    ),

                    const SizedBox(height: 24),

                    // Sign Out
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
}
