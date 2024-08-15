import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/services/paint/bottom_sheet_custom_painter.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/app_bottombar_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_carousel_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_green_card_section_widget.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/home_header_widget.dart';
import 'package:flutter/material.dart';

/// HomePage Class
class HomePage extends StatelessWidget {
  /// HomePage Constructor
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        onPressed: () {},
        backgroundColor: AppColors.bluePrimary,
        child: const Icon(Icons.store, color: AppColors.greenPrimary),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomPaint(
        painter: BottomSheetCustomPainterService(),
        child: const AppBottombarWidget(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            const HomeHeaderWidget(),
            const HomeGreenCardSectionWidget(),
            const HomeCarouselWidget(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
