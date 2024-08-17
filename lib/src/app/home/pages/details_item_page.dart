import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/details_page/details_body_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/details_page/details_carousel_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/details_page/details_header_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/details_page/details_bottom_bar_widget.dart';
import 'package:flutter/material.dart';

/// DetailsItemPage is a StatelessWidget that displays
/// the details of a specific item
class DetailsItemPage extends StatelessWidget {
  /// Constructor for DetailsItemPage
  const DetailsItemPage({
    required this.item,
    super.key,
  });

  /// The item to be displayed on the details page
  final TodaySpecialItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: CustomScrollView(
          slivers: [
            const DetailsHeaderWidget(),
            DetailsCarouselWidget(itemImages: item.images),
            DetailsBodyWidget(item: item),
          ],
        ),
      ),
      bottomNavigationBar: DetailsBottomBarWidget(
        price: item.price,
        priceWithoutDiscount: item.priceWithoutDiscount,
      ),
    );
  }
}
