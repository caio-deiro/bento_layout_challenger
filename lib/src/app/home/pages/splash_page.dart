import 'package:bento_layout_challenger/src/app/core/services/routes/splash_route_animation_service.dart';
import 'package:bento_layout_challenger/src/app/home/pages/home_page.dart';
import 'package:flutter/material.dart';

/// SplashPage Class is a StatefulWidget that displays the splash screen
class SplashPage extends StatefulWidget {
  /// SplashPage Constructor
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final splashRouteService = SplashRouteAnimationService();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 900), () {
      if (mounted) {
        Navigator.of(context).push(
          splashRouteService.createSplashRouteAnimation(
            page: const HomePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/bento_logo.png'),
      ),
    );
  }
}
