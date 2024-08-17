import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// DetailsBodyDescriptionWidget is a StatelessWidget that displays
/// the description of the item on the details page
class DetailsBodyDescriptionWidget extends StatelessWidget {
  /// Constructor for DetailsBodyDescriptionWidget
  const DetailsBodyDescriptionWidget({required this.itemDetails, super.key});

  /// The item details to be displayed on the details page
  final String itemDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Details',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.bluePrimary,
                fontWeight: FontWeight.w800,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          itemDetails,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.blueQuartiary,
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
