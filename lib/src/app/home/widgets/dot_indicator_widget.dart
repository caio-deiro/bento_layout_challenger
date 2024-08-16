import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

/// DotIndicatorWidget Class is a StatelessWidget that
/// displays the Dot Indicator Widget
class DotIndicatorWidget extends StatelessWidget {
  /// DotIndicatorWidget Constructor
  const DotIndicatorWidget({
    required this.currentCarouselIndex,
    this.dotsCount = 4,
    super.key,
  });

  /// Current Carousel Index
  final int currentCarouselIndex;

  /// Dots Count for the Dot Indicator
  final int dotsCount;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
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
