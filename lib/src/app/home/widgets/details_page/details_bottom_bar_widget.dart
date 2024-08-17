import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// DetailsBottomBarWidget is a StatelessWidget that displays
class DetailsBottomBarWidget extends StatelessWidget {
  /// Constructor for DetailsBottomBarWidget
  const DetailsBottomBarWidget({
    required this.price,
    required this.priceWithoutDiscount,
    super.key,
  });

  /// The price of the item
  final String price;

  /// The price of the item without discount
  final String priceWithoutDiscount;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whitePrimary,
        boxShadow: [
          BoxShadow(
            color: AppColors.blueQuartiary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: AppColors.blueSecondary.withOpacity(0.7),
                      ),
                ),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      // ignore: lines_longer_than_80_chars
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppColors.bluePrimary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '\$$priceWithoutDiscount',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppColors.blueSecondary,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 18,
                            // ignore: lines_longer_than_80_chars
                            decorationColor: AppColors.blueSecondary.withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.greenPrimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                'Add to cart',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.bluePrimary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
