import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/app_bottombar_item_widget.dart';
import 'package:flutter/material.dart';

/// AppBottombarWidget Class responsible for the bottom bar
class AppBottombarWidget extends StatelessWidget {
  /// AppBottombarWidget Constructor
  const AppBottombarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.whitePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.39,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppBottombarItemWidget(
                  itemTitle: 'Home',
                  itemIcon: Icons.home,
                  itemColor: AppColors.greenPrimary,
                  titleColor: AppColors.greenPrimary,
                ),
                AppBottombarItemWidget(
                  itemTitle: 'Deals',
                  itemIcon: Icons.local_offer,
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.37,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppBottombarItemWidget(
                  itemTitle: 'Cart',
                  itemIcon: Icons.shopping_cart_rounded,
                ),
                AppBottombarItemWidget(
                  itemTitle: 'Account',
                  itemIcon: Icons.person,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
