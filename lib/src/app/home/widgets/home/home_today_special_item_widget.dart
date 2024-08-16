import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// HomeTodaySpecialItemWidget is a StatelessWidget that displays
/// a today special item
class HomeTodaySpecialItemWidget extends StatelessWidget {
  /// Constructor for HomeTodaySpecialItemWidget
  const HomeTodaySpecialItemWidget({
    required this.backgroundColor,
    required this.imagePath,
    required this.itemName,
    required this.itemRate,
    super.key,
  });

  /// The background color of the item
  final Color backgroundColor;

  /// The image path to be displayed on the card
  final String imagePath;

  /// The name of the item
  final String itemName;

  /// The rate of the item
  final String itemRate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    imagePath,
                    width: 120,
                    height: 120,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/rate_star_image.png',
                        height: 12,
                        width: 12,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        itemRate,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: AppColors.bluePrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.048,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.whitePrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                itemName,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.bluePrimary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
