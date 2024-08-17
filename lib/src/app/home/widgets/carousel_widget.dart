import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

/// CarouselWidget Class is a StatefulWidget that displays the Carousel Widget
class CarouselWidget extends StatelessWidget {
  /// CarouselWidget Constructor
  const CarouselWidget({
    required this.carouselItems,
    required this.onPageChanged,
    this.autoPlayCarousel = true,
    this.carouselHeight = 0.22,
    this.dotsCount = 4,
    this.maxHeight = 150,
    this.minHeight = 150,
    super.key,
  });

  /// The list of widgets to be displayed on the carousel
  final List<Widget> carouselItems;

  /// Whether the carousel should auto play
  final bool autoPlayCarousel;

  /// The height of the carousel
  final double carouselHeight;

  /// The number of dots to be displayed in the Dot Indicator
  final int dotsCount;

  /// The function to be called when the page changes
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;

  /// The maximum height of the carousel
  final double maxHeight;

  /// The minimum height of the carousel
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
            minHeight: minHeight,
          ),
          child: CarouselSlider(
            items: carouselItems,
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: autoPlayCarousel,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              onPageChanged: onPageChanged,
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
