import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_today_special_item_widget.dart';
import 'package:flutter/material.dart';

/// HomeTodaySpecialSectionWidget is a StatelessWidget that displays
/// the today special section
class HomeTodaySpecialSectionWidget extends StatelessWidget {
  /// Constructor for HomeTodaySpecialSectionWidget
  const HomeTodaySpecialSectionWidget({
    required this.todaySpecialItems,
    super.key,
  });

  /// List of today special items to be displayed
  final List<TodaySpecialItemModel> todaySpecialItems;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Special",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.bluePrimary,
                    ),
              ),
              Text(
                'See all',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.greenPrimary,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: todaySpecialItems.length,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final item = todaySpecialItems[index];
              return HomeTodaySpecialItemWidget(
                backgroundColor: item.backgroundColor,
                imagePath: item.image,
                itemName: item.name,
                itemRate: item.rating,
              );
            },
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
