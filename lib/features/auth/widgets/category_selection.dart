import 'package:flutter/material.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}
class _CategorySelectionState extends State<CategorySelection> {
  
  String? selectedButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Who do you shop for?",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButton = "Men"; 
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedButton == "Men"
                        ? AppColors.buttonColor
                        : AppColors.fillColor, 
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    "Men",
                    style: TextStyle(
                       color: selectedButton == "Men"?Colors.white: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedButton = "Women"; 
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedButton == "Women"
                        ? AppColors.buttonColor
                        : AppColors.fillColor, 
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    "Women",
                    style: TextStyle(
                      color: selectedButton == "Women"?Colors.white: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
