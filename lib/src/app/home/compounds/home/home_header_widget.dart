import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

/// HomeHeaderWidget Class responsible for the home header
class HomeHeaderWidget extends StatelessWidget {
  /// HomeHeaderWidget Constructor
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      leading: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Delivery',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.bluePrimary,
                      fontSize: 18,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'Salvador, Bahia',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.blueSecondary,
                        ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.bluePrimary,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
      actions: [
        CircleAvatar(
          child: Image.asset(
            'assets/images/profile_image.png',
            height: 50,
          ),
        ),
      ],
    );
  }
}
