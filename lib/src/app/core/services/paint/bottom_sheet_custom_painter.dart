import 'package:flutter/material.dart';

/// Class BottomSheetCustomPainter responsable for the custom bottom sheet shape
class BottomSheetCustomPainterService extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, 50)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width * .5 + 33 + 19, 0)
      ..quadraticBezierTo(
        size.width * .5 + 33 + 7,
        0,
        size.width * .5 + 33 + 1,
        -13,
      )
      ..quadraticBezierTo(size.width * .5 + 20, -40, size.width * .5, -38)
      ..quadraticBezierTo(
        size.width * .5 - 20,
        -38,
        size.width * .5 - 33 + 1,
        -15,
      )
      ..quadraticBezierTo(
        size.width * .5 - 33 - 5,
        0,
        size.width * .5 - 33 - 15,
        0,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
