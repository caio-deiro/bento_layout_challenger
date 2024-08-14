import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// HomeHeaderWidget Class responsible for the home header
class HomeHeaderWidget extends StatelessWidget {
  /// HomeHeaderWidget Constructor
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: AppColors.whitePrimary,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 80,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.bluePrimary,
                        fontSize: 18,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      'Salvador, Bahia',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
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
            CircleAvatar(
              child: Image.asset(
                'assets/images/profile_image.png',
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
