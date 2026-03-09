import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.onTap,
    required this.text,
    this.textColor,
    this.icon,
    this.image,
    this.height,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? textColor;
  final IconData? icon;
  final String? image;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.purple, AppColors.pink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        height: height ?? 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            if (image != null) Image.asset(image!, fit: BoxFit.contain),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style:  AppStyles.styleMedium16White(context).copyWith(fontSize: 14)
              ),
            ),
            Icon(icon, color: textColor, size: 16),
          ],
        ),
      ),
    );
  }
}
