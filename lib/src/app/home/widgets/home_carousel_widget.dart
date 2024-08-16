import 'package:bento_layout_challenger/src/app/home/widgets/dot_indicator_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_carousel_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

/// HomeCarouselItemType Enum that defines the Carousel Styles
enum HomeCarouselItemType {
  /// HomeCarouselItemType avocado
  avocado,

  /// HomeCarouselItemType banana
  banana,

  /// HomeCarouselItemType orange
  orange,

  /// HomeCarouselItemType pineapple
  apple,
}

/// Class HomeCarouselWidget is a StatelessWidget that
/// displays the Carousel Widget
class HomeCarouselWidget extends StatefulWidget {
  /// HomeCarouselWidget Constructor
  const HomeCarouselWidget({super.key});

  @override
  State<HomeCarouselWidget> createState() => _HomeCarouselWidgetState();
}

class _HomeCarouselWidgetState extends State<HomeCarouselWidget> {
  /// Current Carousel Index
  int _currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.22,
            ),
            child: CarouselSlider(
              items: const [
                HomeCarouselItemWidget(
                  type: HomeCarouselItemType.avocado,
                ),
                HomeCarouselItemWidget(
                  type: HomeCarouselItemType.apple,
                ),
                HomeCarouselItemWidget(
                  type: HomeCarouselItemType.banana,
                ),
                HomeCarouselItemWidget(
                  type: HomeCarouselItemType.orange,
                ),
              ],
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentCarouselIndex = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 5),
          DotIndicatorWidget(currentCarouselIndex: _currentCarouselIndex),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
