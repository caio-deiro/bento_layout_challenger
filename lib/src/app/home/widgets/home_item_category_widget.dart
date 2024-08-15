import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// Widget responsable for display the category item
class HomeItemCategoryWidget extends StatelessWidget {
  /// Class Contructor
  const HomeItemCategoryWidget({
    required this.bacKgroundColor,
    required this.imagePath,
    required this.categoryName,
    super.key,
  });

  /// Background color of the category item
  final Color bacKgroundColor;

  /// Image path of the category item
  final String imagePath;

  /// Category name of the category item
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: bacKgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              height: 45,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          categoryName,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.bluePrimary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
