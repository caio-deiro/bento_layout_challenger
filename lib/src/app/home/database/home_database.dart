import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';

/// Class responsable for retrieve the categories
class HomeDatabase {
  /// Method responsable for retrieve the categories
  List<CategoryItemModel> getCategories() {
    return [
      CategoryItemModel(
        categoryName: 'Vegan',
        categoryImage: 'assets/images/category_vegan_image.png',
        categoryColor: AppColors.greenQuartiary,
      ),
      CategoryItemModel(
        categoryName: 'Meat',
        categoryImage: 'assets/images/category_meat_image.png',
        categoryColor: AppColors.greyPrimary,
      ),
      CategoryItemModel(
        categoryName: 'Fruits',
        categoryImage: 'assets/images/category_fruits_image.png',
        categoryColor: AppColors.greyPrimary,
      ),
      CategoryItemModel(
        categoryName: 'Milk',
        categoryImage: 'assets/images/category_milk_image.png',
        categoryColor: AppColors.greyPrimary,
      ),
      CategoryItemModel(
        categoryName: 'Fish',
        categoryImage: 'assets/images/category_fish_image.png',
        categoryColor: AppColors.greyPrimary,
      ),
      CategoryItemModel(
        categoryName: 'Drinks',
        categoryImage: 'assets/images/category_drink_image.png',
        categoryColor: AppColors.greyPrimary,
      ),
    ];
  }
}
