import 'package:bento_layout_challenger/src/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

/// AppBarWidget Class
class AppBarWidget extends StatelessWidget {
  /// Constructor for AppBarWidget
  const AppBarWidget({
    required this.leading,
    required this.actions,
    this.leadingWidth = 150,
    super.key,
  });

  /// The left side widget of appbar
  final Widget leading;

  /// The right side widget of appbar
  final List<Widget> actions;

  /// The width of the leading widget
  final double leadingWidth;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      backgroundColor: AppColors.whitePrimary,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 80,
      leadingWidth: leadingWidth,
      leading: leading,
      actions: actions,
    );
  }
}
