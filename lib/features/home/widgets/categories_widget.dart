import 'package:flutter/material.dart';
import 'package:shoflex/core/utils/app_data.dart';
import 'package:shoflex/features/home/screens/category_products.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryProducts(
                    categoryName: categories[index]["title"].toString()
                         
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.grey.shade100,
                    backgroundImage: AssetImage(categories[index]['image']!),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    categories[index]['title']!,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
