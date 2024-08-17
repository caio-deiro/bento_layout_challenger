import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/home_carousel_item_model.dart';
import 'package:flutter/material.dart';

/// HomeCarouselItemWidget Class is a StatelessWidget that
/// displays the Carousel Item Widget
class HomeCarouselItemWidget extends StatelessWidget {
  /// HomeCarouselItemWidget Constructor
  const HomeCarouselItemWidget({
    required this.carouselItem,
    super.key,
  });

  /// HomeCarouselItemWidget type
  final HomeCarouselItemModel carouselItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: carouselItem.cardBackgroundColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    carouselItem.title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: carouselItem.titleColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    carouselItem.description,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: carouselItem.descriptionColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          overflow: TextOverflow.clip,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 115,
                    height: 38,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.bluePrimary,
                    ),
                    child: Text(
                      'Shop Now',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.greenPrimary,
                            fontSize: MediaQuery.of(context).size.width * 0.038,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Image.asset(
              carouselItem.imagePath,
              height: 180,
              width: 180,
            ),
          ),
        ],
      ),
    );
  }
}
