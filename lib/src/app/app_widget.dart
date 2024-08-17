import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:bento_layout_challenger/src/app/home/pages/splash_page.dart';
import 'package:flutter/material.dart';

/// AppWidget Class is a StatelessWidget that displays the MaterialApp
class AppWidget extends StatelessWidget {
  /// AppWidget Constructor
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'NunitoBlack',
        scaffoldBackgroundColor: AppColors.whitePrimary,
      ),
      home: const SplashPage(),
    );
  }
}
