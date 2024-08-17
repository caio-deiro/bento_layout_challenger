import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/services/paint/bottom_sheet_custom_painter.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/app_bottombar_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/home_carousel_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/home_category_section_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/home_green_card_section_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/home_header_widget.dart';
import 'package:bento_layout_challenger/src/app/home/compounds/home/home_today_special_section_widget.dart';
import 'package:bento_layout_challenger/src/app/home/controller/home_controller.dart';
import 'package:flutter/material.dart';

/// HomePage Class
class HomePage extends StatefulWidget {
  /// HomePage Constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController
      ..getCategories()
      ..getTodaySpecialItems()
      ..getHomeCarouselItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            const HomeHeaderWidget(),
            const HomeGreenCardSectionWidget(),
            HomeCarouselWidget(
              carouselItemList: homeController.homeCarouselList,
            ),
            HomeCategorySectionWidget(
              categoryItems: homeController.homeCategoryList,
            ),
            HomeTodaySpecialSectionWidget(
              todaySpecialItems: homeController.todaySpecialItems,
              routeAnimationService: homeController.routeAnimationService,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        backgroundColor: AppColors.bluePrimary,
        child: const Icon(
          Icons.store,
          color: AppColors.greenPrimary,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomPaint(
        painter: BottomSheetCustomPainterService(),
        child: const AppBottombarWidget(),
      ),
    );
  }
}
