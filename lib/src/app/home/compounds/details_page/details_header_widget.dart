import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

/// DetailsHeaderWidget Class responsible
/// for the details header
class DetailsHeaderWidget extends StatelessWidget {
  /// DetailsHeaderWidget Constructor
  const DetailsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      appBarHeight: 60,
      leadingWidth: 40,
      leading: Align(
        alignment: Alignment.bottomLeft,
        child: CircleAvatar(
          backgroundColor: AppColors.greyPrimary,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      actions: const [
        Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            backgroundColor: AppColors.greyPrimary,
            child: Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
