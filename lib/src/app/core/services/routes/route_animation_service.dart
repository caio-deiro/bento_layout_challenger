import 'package:flutter/material.dart';

/// A class that provides custom route animations
class RouteAnimationService {
  /// Creates a custom route for the details item page
  Route<dynamic> createRoute({
    // required BuildContext context,
    required Widget page,
  }) {
    return PageRouteBuilder(
      pageBuilder: (_, ___, __) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1, 0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        final tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
