import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/core/utils/app_data.dart';
import 'package:shoflex/features/cart/screens/cart_screen.dart';
import 'package:shoflex/features/home/widgets/categories_widget.dart';
import 'package:shoflex/features/home/widgets/trending_list.dart';
import 'package:shoflex/search/screens/empty_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/dp.png"),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "Men",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        const SizedBox(width: 6),
                        SvgPicture.asset(
                          "assets/arrowdown.svg",
                          height: 12,
                          width: 12,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CartScreen.routeName);
                    },
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        color: AppColors.buttonColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/cart.svg",
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                          height: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// Search
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, EmptySearch.routeName);
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: AppColors.fillColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/search.svg", height: 20),
                      const SizedBox(width: 10),
                      const Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 14),

              /// Categories
              const CategoriesWidget(),

              const SizedBox(height: 24),

              const Text(
                "Today's Trending",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 16),

              TrendingList(products: trendingProducts),
              const SizedBox(height: 20),
              TrendingList(products: trendingProducts.reversed.toList()),
            ],
          ),
        ),
      ),
    );
  }
}
