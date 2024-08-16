import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// AppBottombarItemWidget Class responsible
/// for the bottom bar item
class AppBottombarItemWidget extends StatelessWidget {
  /// AppBottombarItemWidget Constructor
  const AppBottombarItemWidget({
    required this.itemTitle,
    required this.itemIcon,
    this.itemColor = AppColors.greenSecondary,
    this.titleColor = AppColors.greenSecondary,
    super.key,
  });

  /// Bottom bar item Title
  final String itemTitle;

  /// Bottom bar item Icon
  final IconData itemIcon;

  /// Bottom bar item Color
  final Color itemColor;

  /// Bottom bar item Title Color
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          itemIcon,
          color: itemColor,
        ),
        Text(
          itemTitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: titleColor,
              ),
        ),
      ],
    );
  }
}
