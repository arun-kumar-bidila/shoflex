import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class NotificationCard extends StatelessWidget {
  final String text;
  final bool hasUnreadDot;

  const NotificationCard({
    super.key,
    required this.text,
    this.hasUnreadDot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.fillColor, // Light grey background
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                "assets/notification.svg",
                width: 25,
                height: 25,
                colorFilter: ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
              ),
              if (hasUnreadDot)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  height: 1.4,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
