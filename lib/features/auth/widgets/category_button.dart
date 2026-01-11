import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class CategoryButton extends StatefulWidget {
  final String buttonName;
  const CategoryButton({super.key, required this.buttonName});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    Color buttoncolor = AppColors.fillColor;
    return GestureDetector(
      onTap: () {
        setState(() {
          buttoncolor = AppColors.buttonColor;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(100),
        ),
        alignment: Alignment.center,
        height: 50,
        child: Text(
          widget.buttonName,
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
