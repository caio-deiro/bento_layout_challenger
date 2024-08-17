import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// DetailsBodyTitleWidget is a StatelessWidget that displays
/// the title's body of the details page
class DetailsBodyTitleWidget extends StatelessWidget {
  /// DetailsBodyTitleWidget Constructor
  const DetailsBodyTitleWidget({
    required this.itemDescription,
    required this.itemRating,
    super.key,
  });

  /// The item info to be displayed on the details page
  final String itemDescription;

  /// The item info to be displayed on the details page
  final String itemRating;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                itemDescription,
                overflow: TextOverflow.clip,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.bluePrimary,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            const Spacer(),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.whitePrimary,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.greyPrimary,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/rate_star_image.png',
                    height: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    itemRating,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.bluePrimary,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          'Shop: Casa das frutas',
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.blueQuartiary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
