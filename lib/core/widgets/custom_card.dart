import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    this.child,
    this.cardColor,
    this.elevation,
    this.radius, this.borderColor,
  });
  final Widget? child;
  final Color? cardColor;
  final double? elevation, radius;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: elevation ?? 8, // درجة الظل
      shadowColor: AppColors.kGrey.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? AppColors.borderPink),
        borderRadius: BorderRadius.circular(radius ?? 24),
      ),
      child: child,
    );
  }
}
