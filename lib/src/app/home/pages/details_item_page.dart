import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';
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
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Container(),
    );
  }
}
