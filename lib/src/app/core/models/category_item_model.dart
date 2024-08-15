import 'dart:ui';

/// Model responsable for store the category item data
class CategoryItemModel {
  /// Class Contructor
  CategoryItemModel({
    required this.categoryName,
    required this.categoryImage,
    required this.categoryColor,
  });

  /// Category name of the category item
  final String categoryName;

  /// Image path of the category item
  final String categoryImage;

  /// Background color of the category item
  final Color categoryColor;
}
