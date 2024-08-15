import 'package:bento_layout_challenger/src/app/core/models/category_item_model.dart';
import 'package:bento_layout_challenger/src/app/home/database/home_database.dart';

/// Controller responsable data management of home page
class HomeController {
  /// Instance of HomeDatabase
  final homeDatabase = HomeDatabase();

  /// List of categories to be displayed
  List<CategoryItemModel> homeCategoryList = [];

  /// Method responsable for get the categories
  void getCategories() {
    homeCategoryList = homeDatabase.getCategories();
  }
}
