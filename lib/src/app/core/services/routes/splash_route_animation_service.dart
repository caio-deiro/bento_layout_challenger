import 'package:flutter/material.dart';

/// A class that provides custom route animations
class SplashRouteAnimationService {
  /// Creates a custom route for the splash page
  Route<dynamic> createSplashRouteAnimation({
    required Widget page,
  }) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 1200),
      pageBuilder: (_, ___, __) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0, 1);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
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
