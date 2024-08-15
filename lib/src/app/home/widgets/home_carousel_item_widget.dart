import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_carousel_widget.dart';
import 'package:flutter/material.dart';

/// HomeCarouselItemWidget Class is a StatelessWidget that
/// displays the Carousel Item Widget
class HomeCarouselItemWidget extends StatefulWidget {
  /// HomeCarouselItemWidget Constructor
  const HomeCarouselItemWidget({
    required this.type,
    super.key,
  });

  /// HomeCarouselItemWidget type
  final HomeCarouselItemType type;

  @override
  State<HomeCarouselItemWidget> createState() => _HomeCarouselItemWidgetState();
}

class _HomeCarouselItemWidgetState extends State<HomeCarouselItemWidget> {
  late String title;
  late String description;
  late String description2;
  late String imagePath;
  late Color cardBackgroundColor;
  Color descriptionColor = AppColors.bluePrimary;
  Color titleColor = AppColors.blueSecondary;
  double imageHeight = 0.2;
  double imageWidth = 0.5;

  @override
  void initState() {
    super.initState();
    switch (widget.type) {
      case HomeCarouselItemType.avocado:
        title = 'Top Deal !';
        description = 'FRESH AVOCADO';
        description2 = 'UP TO 15% OFF';
        imagePath = 'assets/images/carousel_avocado_image.png';
        cardBackgroundColor = AppColors.greenTertiary;

      case HomeCarouselItemType.apple:
        title = 'Top Deal !';
        description = 'FRESH APPLE';
        description2 = 'NOW 10% LESS';
        imagePath = 'assets/images/carousel_apple_image.png';
        cardBackgroundColor = AppColors.redPrimary;
        titleColor = AppColors.whitePrimary;
        descriptionColor = AppColors.whitePrimary;

      case HomeCarouselItemType.banana:
        title = 'Top Deal !';
        description = 'FRESH BANANA';
        description2 = 'SAVE 15% TODAY';
        imagePath = 'assets/images/carousel_banana_image.png';
        cardBackgroundColor = AppColors.yellowPrimary;
        titleColor = AppColors.whitePrimary;
        imageHeight = 0.2;
        imageWidth = 0.42;

      case HomeCarouselItemType.orange:
        title = 'Top Deal !';
        description = 'FRESH ORANGE';
        description2 = 'AT 10% DISCOUNT';
        imagePath = 'assets/images/carousel_orange_image.png';
        cardBackgroundColor = AppColors.orangePrimary;
        titleColor = AppColors.whitePrimary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cardBackgroundColor,
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
                    title,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: titleColor,
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                        ),
                  ),
                  Text(
                    '$description\n$description2',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: descriptionColor,
                          fontWeight: FontWeight.w900,
                          fontSize: MediaQuery.of(context).size.width * 0.045,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.height * 0.055,
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
              imagePath,
              height: MediaQuery.of(context).size.height * imageHeight,
              width: MediaQuery.of(context).size.width * imageWidth,
            ),
          ),
        ],
      ),
    );
  }
}
