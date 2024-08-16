import 'dart:ui';

/// The model class of the today special item
class TodaySpecialItemModel {
  /// The constructor of the class
  TodaySpecialItemModel({
    required this.name,
    required this.images,
    required this.price,
    required this.priceWithoutDiscount,
    required this.rating,
    required this.description,
    required this.details,
    required this.backgroundColor,
  });

  /// The name of the item
  final String name;

  /// The image path to be displayed on the card
  final List<String> images;

  /// The price of the item
  final String price;

  /// The price of the item without discount
  final String priceWithoutDiscount;

  /// The rating of the item
  final String rating;

  /// The description of the item
  final String description;

  /// The details of the item
  final String details;

  /// The background color of the item
  final Color backgroundColor;
}
