import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_item_category_widget.dart';
import 'package:flutter/material.dart';

/// Widget responsable for display the category section
class HomeCategorySectionWidget extends StatelessWidget {
  /// Class Contructor
  const HomeCategorySectionWidget({
    required this.categoryItems,
    super.key,
  });

  /// List of categories to be displayed
  final List<CategoryItemModel> categoryItems;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shop by category',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.bluePrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: categoryItems.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final item = categoryItems[index];
                return HomeItemCategoryWidget(
                  bacKgroundColor: item.categoryColor,
                  imagePath: item.categoryImage,
                  categoryName: item.categoryName,
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
