// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

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

class HomeCarouselItemModel {
  HomeCarouselItemModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.cardBackgroundColor,
    required this.descriptionColor,
    required this.titleColor,
    required this.type,
  });

  final HomeCarouselItemType type;

  /// HomeCarouselItemModel title
  final String title;

  /// HomeCarouselItemModel description
  final String description;

  /// HomeCarouselItemModel imagePath
  final String imagePath;

  /// HomeCarouselItemModel cardBackgroundColor
  final Color cardBackgroundColor;

  /// HomeCarouselItemModel descriptionColor
  final Color descriptionColor;

  /// HomeCarouselItemModel titleColor
  final Color titleColor;
}
