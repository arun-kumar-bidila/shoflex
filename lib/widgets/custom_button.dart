import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';


class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.buttonName,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: onTap,
      child: Container(
        decoration: BoxDecoration(
         color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        alignment: Alignment.center,
        height: 50,
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
