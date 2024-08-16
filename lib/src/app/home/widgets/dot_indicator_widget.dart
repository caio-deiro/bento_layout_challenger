import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

/// DotIndicatorWidget Class is a StatelessWidget that
/// displays the Dot Indicator Widget
class DotIndicatorWidget extends StatelessWidget {
  /// DotIndicatorWidget Constructor
  const DotIndicatorWidget({
    this.currentCarouselIndex = 0,
    super.key,
  });

  /// Current Carousel Index
  final int currentCarouselIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: currentCarouselIndex,
      decorator: DotsDecorator(
        color: AppColors.greenSextiary,
        activeColor: AppColors.greenPrimary,
        activeSize: const Size(35, 9),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
