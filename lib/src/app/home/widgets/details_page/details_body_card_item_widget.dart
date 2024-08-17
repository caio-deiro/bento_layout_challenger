import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// DetailsBodyCardItemWidget is a StatelessWidget that displays
/// the body card item of the details page
class DetailsBodyCardItemWidget extends StatelessWidget {
  /// Class Contructor
  const DetailsBodyCardItemWidget({
    required this.imagePath,
    required this.itemName,
    required this.backgroundColor,
    super.key,
  });

  /// The image path of the item
  final String imagePath;

  /// The name of the item
  final String itemName;

  /// The background color of the item
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          child: Image.asset(
            imagePath,
            height: 30,
            width: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          itemName,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: AppColors.bluePrimary,
                fontWeight: FontWeight.w800,
              ),
        ),
      ],
    );
  }
}
