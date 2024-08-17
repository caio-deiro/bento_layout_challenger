import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/models/home_carousel_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/models/today_special_item_model.dart';
import 'package:bento_layout_challenger/src/app/core/services/routes/details_route_animation_service.dart';
import 'package:bento_layout_challenger/src/app/home/database/home_database.dart';

/// Controller responsable data management of home page
final class HomeController {
  /// Instance of HomeDatabase
  final homeDatabase = HomeDatabase();

  /// Instance of route animation service
  final routeAnimationService = RouteAnimationService();

  /// List of categories to be displayed
  List<CategoryItemModel> homeCategoryList = [];

  /// List of today special items to be displayed
  List<TodaySpecialItemModel> todaySpecialItems = [];

  /// List of home carousel items to be displayed
  List<HomeCarouselItemModel> homeCarouselList = [];

  /// Method responsable for get the categories
  void getCategories() {
    homeCategoryList = homeDatabase.getCategories();
  }

  /// Method responsable for get the today special items
  void getTodaySpecialItems() {
    todaySpecialItems = homeDatabase.getTodaySpecialItems();
  }

  /// Method responsable for get the home carousel items
  void getHomeCarouselItems() {
    homeCarouselList = homeDatabase.getCarouselItems();
  }
}
