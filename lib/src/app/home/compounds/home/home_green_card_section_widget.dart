import 'package:bento_layout_challenger/src/app/home/widgets/home/home_green_card_widget.dart';
import 'package:flutter/material.dart';

/// HomeGreenCardSectionWidget Class is a StatelessWidget that displays
/// a section with two green cards on the home screen.
class HomeGreenCardSectionWidget extends StatelessWidget {
  /// Constructor for HomeGreenCardSectionWidget
  const HomeGreenCardSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeGreenCardWidget(
              firstText: 'ORDER',
              secondText: 'AGAIN',
              imagePath: 'assets/images/order_again_image.png',
              imageRightPosition: 5,
            ),
            HomeGreenCardWidget(
              firstText: 'LOCAL',
              secondText: 'SHOP',
              imagePath: 'assets/images/local_shop_image.png',
              imageRightPosition: -4,
            ),
          ],
        ),
      ),
    );
  }
}
