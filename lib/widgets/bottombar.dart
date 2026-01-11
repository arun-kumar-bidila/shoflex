import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/cart/widgets/empty_cart.dart';
import 'package:shoflex/features/notification/screens/notifications_screen.dart';
import 'package:shoflex/features/orders/screens/order_placed.dart';
import 'package:shoflex/features/orders/widgets/no_orders.dart';
import 'package:shoflex/features/profile/screens/profile_screen.dart';

class Bottombar extends StatefulWidget {
  static const String routeName = "/bottombar";
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int page = 0;

  final List<Widget> pages = [
    OrderPlaced(),
    NotificationsScreen(),
    NoOrders(),
    ProfileScreen()
  ];

  void updatePage(int index) {
    setState(() {
      page = index;
    });
  }

  Widget _svgIcon(String asset, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SvgPicture.asset(
        asset,
        width: 25,
        height: 25,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.buttonColor : AppColors.bottomIcon,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.isNotEmpty ? pages[page] : const SizedBox(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.background,
          type: BottomNavigationBarType.fixed,
          currentIndex: page,
          onTap: updatePage,
          items: [
            BottomNavigationBarItem(
              icon: _svgIcon('assets/home.svg', page == 0),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _svgIcon('assets/notification.svg', page == 1),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _svgIcon('assets/orders.svg', page == 2),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _svgIcon('assets/profile.svg', page == 3),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
