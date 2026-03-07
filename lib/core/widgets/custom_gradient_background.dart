import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class CustomGradientBackground extends StatelessWidget {
  const CustomGradientBackground({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.pink,
            AppColors.kBlack,
          ],
        ),
      ),
      child: child,
    );
  }
}