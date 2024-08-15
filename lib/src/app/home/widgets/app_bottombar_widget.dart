import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
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
          Row(
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.home,
                      color: AppColors.greenPrimary,
                    ),
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.greenPrimary,
                          ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.local_offer,
                      color: AppColors.greenSecondary,
                    ),
                    Text(
                      'Deals',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.greenSecondary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.shopping_cart_rounded,
                      color: AppColors.greenSecondary,
                    ),
                    Text(
                      'Cart',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.greenSecondary,
                          ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.person,
                      color: AppColors.greenSecondary,
                    ),
                    Text(
                      'Account',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.greenSecondary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
