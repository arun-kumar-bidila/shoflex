import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class LoginProviderButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onTap;

  const LoginProviderButton({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.fillColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [

            SizedBox(width: 20),

            // button image
            Image.asset(
              imagePath,
              height: 22,
              width: 22,
            ),

            const SizedBox(width: 12),

            // center text
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),

            // using to keep the text centered
            const SizedBox(width: 54),
          ],
        ),
      ),
    );
  }
}
