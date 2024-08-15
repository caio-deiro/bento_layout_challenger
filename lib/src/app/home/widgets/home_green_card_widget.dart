import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/core/services/clippers/green_card_image_custom_paint.dart';
import 'package:flutter/material.dart';

/// HomeGreenCardWidget is a StatelessWidget that displays
/// a green card on the home screen.
class HomeGreenCardWidget extends StatelessWidget {
  /// Constructor for HomeGreenCardWidget
  const HomeGreenCardWidget({
    required this.firstText,
    required this.secondText,
    required this.imagePath,
    this.imageRightPosition = 0,
    this.imageBottomPosition = 0,
    super.key,
  });

  /// The first text to be displayed on the card
  final String firstText;

  /// The second text to be displayed on the card
  final String secondText;

  /// The image path to be displayed on the card
  final String imagePath;

  /// The position of the image from the top
  final double imageRightPosition;

  /// The position of the image from the bottom
  final double imageBottomPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        color: AppColors.greenPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '$firstText\n$secondText',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.bluePrimary,
                      fontWeight: FontWeight.w900,
                      fontSize: MediaQuery.of(context).size.width * 0.042,
                    ),
              ),
            ),
          ),
          Positioned(
            right: imageRightPosition,
            bottom: imageBottomPosition,
            child: ClipPath(
              clipper: GreenCardImageCustomPaint(),
              child: Image.asset(
                imagePath,
                height: 60,
                width: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
