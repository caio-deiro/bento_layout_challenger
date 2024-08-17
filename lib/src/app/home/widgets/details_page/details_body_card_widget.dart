import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/details_page/details_body_card_item_widget.dart';
import 'package:flutter/material.dart';

/// Widget responsable for display the body card
/// of the details page
class DetailsBodyCardWidget extends StatelessWidget {
  /// Class Contructor
  const DetailsBodyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.greyPrimary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DetailsBodyCardItemWidget(
            backgroundColor: AppColors.greenQuintiary,
            imagePath: 'assets/images/details_vegetarian_image.png',
            itemName: 'Vegetarian',
          ),
          DetailsBodyCardItemWidget(
            backgroundColor: AppColors.orangePrimary,
            imagePath: 'assets/images/details_halal_image.png',
            itemName: 'Halal Food',
          ),
          DetailsBodyCardItemWidget(
            backgroundColor: AppColors.blueTertiary,
            imagePath: 'assets/images/details_gluten_image.png',
            itemName: 'Gluten-free',
          ),
        ],
      ),
    );
  }
}
