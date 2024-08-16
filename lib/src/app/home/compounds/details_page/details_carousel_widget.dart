import 'package:bento_layout_challenger/src/app/home/widgets/carousel_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/dot_indicator_widget.dart';
import 'package:flutter/material.dart';

/// Details Carousel Widget to display the carousel in the details page
class DetailsCarouselWidget extends StatefulWidget {
  /// Constructor for DetailsCarouselWidget
  const DetailsCarouselWidget({
    required this.itemImages,
    super.key,
  });

  /// List of images to be displayed in the carousel
  final List<String> itemImages;

  @override
  State<DetailsCarouselWidget> createState() => _DetailsCarouselWidgetState();
}

class _DetailsCarouselWidgetState extends State<DetailsCarouselWidget> {
  int _carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CarouselWidget(
            onPageChanged: (index, __) {
              setState(() {
                _carouselIndex = index;
              });
            },
            carouselItems: widget.itemImages.map(Image.asset).toList(),
            autoPlayCarousel: false,
            carouselHeight: 0.4,
            dotsCount: 3,
          ),
          const SizedBox(height: 5),
          DotIndicatorWidget(
            currentCarouselIndex: _carouselIndex,
            dotsCount: widget.itemImages.length,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
