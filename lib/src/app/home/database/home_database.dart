import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/models/home_carousel_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';

/// Class responsable for retrieve the categories
final class HomeDatabase {
  /// Method responsable for retrieve the home carousel items
  List<HomeCarouselItemModel> getCarouselItems() {
    return [
      HomeCarouselItemModel(
        title: 'Top Deal !',
        description: 'FRESH AVOCADO\nUP TO 15% OFF',
        imagePath: 'assets/images/carousel_avocado_image.png',
        cardBackgroundColor: AppColors.greenTertiary,
        descriptionColor: AppColors.bluePrimary,
        titleColor: AppColors.blueSecondary,
        type: HomeCarouselItemType.avocado,
        imageHeight: 180,
        imageWidth: 180,
      ),
      HomeCarouselItemModel(
        title: 'Top Deal !',
        description: 'FRESH APPLE\nNOW 10% LESS',
        imagePath: 'assets/images/carousel_apple_image.png',
        cardBackgroundColor: AppColors.redPrimary,
        titleColor: AppColors.bluePrimary,
        descriptionColor: AppColors.whitePrimary,
        type: HomeCarouselItemType.apple,
        imageHeight: 180,
        imageWidth: 180,
      ),
      HomeCarouselItemModel(
        title: 'Top Deal !',
        description: 'FRESH BANANA\nSAVE 15% TODAY',
        imagePath: 'assets/images/carousel_banana_image.png',
        cardBackgroundColor: AppColors.yellowPrimary,
        titleColor: AppColors.bluePrimary,
        descriptionColor: AppColors.whitePrimary,
        type: HomeCarouselItemType.banana,
        imageHeight: 150,
        imageWidth: 150,
      ),
      HomeCarouselItemModel(
        title: 'Top Deal !',
        description: 'FRESH ORANGE\nGET 20% OFF',
        imagePath: 'assets/images/carousel_orange_image.png',
        cardBackgroundColor: AppColors.orangePrimary,
        titleColor: AppColors.greenPrimary,
        descriptionColor: AppColors.bluePrimary,
        type: HomeCarouselItemType.orange,
        imageHeight: 180,
        imageWidth: 180,
      ),
    ];
  }

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
        images: [
          'assets/images/orange_image.png',
          'assets/images/orange_image_2.png',
          'assets/images/orange_image_3.png',
        ],
        price: '2.99',
        priceWithoutDiscount: '3.99',
        rating: '4.5',
        description: 'Organic Fresh Orange',
        backgroundColor: AppColors.orangePrimary,
        details:
            // ignore: lines_longer_than_80_chars
            "Oranges, often referred to as the sunshine fruit, are one of the most popular citrus varieties. Known for their bright color and refreshing taste, oranges are prized for their sweet and tangy flavor. The fruit's segments aretightly packed within its peel, which can range from a deep orange to a yellowish hue.",
      ),
      TodaySpecialItemModel(
        name: 'Organic Cabbage',
        images: [
          'assets/images/cabbage_image.png',
          'assets/images/cabbage_image_2.png',
          'assets/images/cabbage_image_3.png',
        ],
        price: '2.99',
        priceWithoutDiscount: '3.99',
        rating: '4.5',
        description: 'Organic Fresh Green Cabbage',
        backgroundColor: AppColors.greenQuintiary,
        details:
            // ignore: lines_longer_than_80_chars
            "are commonly know as green cabbage, the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way it's leaves wound tightly ever one.",
      ),
      TodaySpecialItemModel(
        name: 'Organic Purple Onion',
        images: [
          'assets/images/onion_image.png',
          'assets/images/onion_image_2.png',
          'assets/images/onion_image_3.png',
        ],
        price: '1.99',
        priceWithoutDiscount: '2.99',
        rating: '4.4',
        description: 'Organic Fresh Purple Onion',
        backgroundColor: AppColors.purplePrimary,
        // ignore: lines_longer_than_80_chars
        details:
            // ignore: lines_longer_than_80_chars
            'Purple onions, also known as red onions, are a vibrant and flavorful variety of onion that stands out for its striking color and mild, sweet taste. Unlike their white or yellow counterparts, purple onions have a distinctive reddish-purple skin and layers of white flesh tinged with shades of purple. They are popular in salads, salsas, and as a garnish because of their appealing color and crisp texture.',
      ),
      TodaySpecialItemModel(
        name: 'Organic Strawberry',
        images: [
          'assets/images/strawberry_image.png',
          'assets/images/strawberry_image_2.png',
          'assets/images/strawberry_image_3.png',
        ],
        price: '3.99',
        priceWithoutDiscount: '4.99',
        rating: '4.5',
        description: 'Organic Fresh Strawberry',
        backgroundColor: AppColors.redPrimary.withOpacity(0.2),
        details:
            // ignore: lines_longer_than_80_chars
            "Strawberries, often dubbed nature's candy, are beloved for their vibrant red color, juicy texture, and sweet-tart flavor. These small, heart-shaped fruits are not only visually appealing but also packed with nutrients. Rich in vitamin C, manganese, and antioxidants, strawberries are a healthy treat that can be enjoyed fresh, in desserts, or as part of savory dishes.",
      ),
    ];
  }
}
