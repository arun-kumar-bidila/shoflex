import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/notification/widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: "Gabarito"
              ),
            ),
            const SizedBox(height: 30),
            
            // List of Notifications
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  NotificationCard(
                    text:
                        'Gilbert, you placed and order check your order history for full details',
                    hasUnreadDot: true,
                  ),
                  NotificationCard(
                    text:
                        'Gilbert, Thank you for shopping with us we have canceled order #24568.',
                    hasUnreadDot: false,
                  ),
                  NotificationCard(
                    text:
                        'Gilbert, your Order #24568 has been confirmed check your order history for f...',
                    hasUnreadDot: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}
