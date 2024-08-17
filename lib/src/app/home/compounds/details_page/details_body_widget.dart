import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/details_page/details_body_card_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/details_page/details_body_description_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/details_page/details_body_title_widget.dart';
import 'package:flutter/material.dart';

/// DetailsBodyWidget is a StatelessWidget that displays
/// the body of the details page
class DetailsBodyWidget extends StatelessWidget {
  /// Constructor for DetailsBodyWidget
  const DetailsBodyWidget({
    required this.item,
    super.key,
  });

  /// The item info to be displayed on the details page
  final TodaySpecialItemModel item;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          DetailsBodyTitleWidget(
            itemDescription: item.description,
            itemRating: item.rating,
          ),
          const SizedBox(height: 20),
          const DetailsBodyCardWidget(),
          const SizedBox(height: 20),
          DetailsBodyDescriptionWidget(itemDetails: item.details),
        ],
      ),
    );
  }
}
