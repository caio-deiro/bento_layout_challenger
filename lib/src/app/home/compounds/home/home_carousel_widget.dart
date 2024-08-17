import 'package:bento_layout_challenger/src/app/core/models/home_carousel_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/carousel_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/dot_indicator_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home/home_carousel_item_widget.dart';
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
// ignore: must_be_immutable
class HomeCarouselWidget extends StatefulWidget {
  /// HomeCarouselWidget Constructor
  const HomeCarouselWidget({
    required this.carouselItemList,
    super.key,
  });

  /// List of HomeCarouselItemModel to be displayed
  final List<HomeCarouselItemModel> carouselItemList;

  @override
  State<HomeCarouselWidget> createState() => _HomeCarouselWidgetState();
}

class _HomeCarouselWidgetState extends State<HomeCarouselWidget> {
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
            carouselItems: widget.carouselItemList
                .map(
                  (item) => HomeCarouselItemWidget(carouselItem: item),
                )
                .toList(),
          ),
          const SizedBox(height: 5),
          DotIndicatorWidget(
            currentCarouselIndex: _carouselIndex,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
