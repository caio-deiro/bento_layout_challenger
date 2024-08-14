import 'package:flutter/material.dart';

/// Class GreenCardImageCustomPaint is a CustomClipper<Path> that creates
/// a custom shape for the green card image.
class GreenCardImageCustomPaint extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width - 5, size.height)
      ..quadraticBezierTo(
        size.width,
        size.height - 10,
        size.width,
        size.height - 5,
      )
      ..lineTo(size.width, size.height - 5)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
