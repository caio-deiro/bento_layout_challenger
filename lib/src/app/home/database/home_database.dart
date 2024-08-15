import 'dart:ui';

import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';

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

  /// Method responsable for retrieve the today special items

  List<TodaySpecialItemModel> getTodaySpecialItems() {
    return [
      TodaySpecialItemModel(
        name: 'Organic Orange',
        image: 'assets/images/orange_image.png',
        price: '2.99',
        priceWithoutDiscount: '3.99',
        rating: '4.5',
        description: 'Organic Orange',
        backgroundColor: AppColors.orangePrimary,
        details: '''
            Oranges, often referred to as the "sunshine fruit," are one of the most 
            popular citrus varieties. Known for their bright color and refreshing taste, 
            oranges are prized for their sweet and tangy flavor. The fruit's segments are
            tightly packed within its peel, which can range from a deep orange to a yellowish hue.
                  ''',
      ),
      TodaySpecialItemModel(
        name: 'Organic Cabbage',
        image: 'assets/images/cabbage_image.png',
        price: '2.99',
        priceWithoutDiscount: '3.99',
        rating: '4.5',
        description: 'Organic Fresh Green Cabbage',
        backgroundColor: AppColors.greenQuintiary,
        details: '''
                are commonly know as green cabbage, the cannonball 
                cabbage is one of the most popular cabbage varieties. It is 
                so named for the way it's leaves wound tightly ever one.
              ''',
      ),
      TodaySpecialItemModel(
        name: 'Organic Purple Onion',
        image: 'assets/images/onion_image.png',
        price: '1.99',
        priceWithoutDiscount: '2.99',
        rating: '4.4',
        description: 'Organic Fresh Purple Onion',
        backgroundColor: AppColors.purplePrimary,
        details: '''
                Purple onions, also known as red onions, are a vibrant and 
                flavorful variety of onion that stands out for its striking
                color and mild, sweet taste. Unlike their white or yellow 
                counterparts, purple onions have a distinctive reddish-purple 
                skin and layers of white flesh tinged with shades of purple. 
                They are popular in salads, salsas, and as a garnish because
                of their appealing color and crisp texture.
              ''',
      ),
      TodaySpecialItemModel(
        name: 'Organic Strawberry',
        image: 'assets/images/strawberry_image.png',
        price: '3.99',
        priceWithoutDiscount: '4.99',
        rating: '4.5',
        description: 'Organic Fresh Strawberry',
        backgroundColor: AppColors.redPrimary,
        details: '''
                Strawberries, often dubbed "nature's candy," are beloved for 
                their vibrant red color, juicy texture, and sweet-tart flavor. 
                These small, heart-shaped fruits are not only visually appealing 
                but also packed with nutrients. Rich in vitamin C, manganese, and 
                antioxidants, strawberries are a healthy treat that can be enjoyed 
                fresh, in desserts, or as part of savory dishes.
              ''',
      ),
    ];
  }
}
