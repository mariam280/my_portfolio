import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.child, this.cardColor, this.elevation, this.radius});
  final Widget? child;
  final Color? cardColor;
  final double? elevation , radius;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation:elevation ?? 8, // درجة الظل
      shadowColor: AppColors.kGrey.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ??24)),
      child: child,
    );
  }
}
