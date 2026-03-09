import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.onTap,
    required this.text,
    this.textColor,
    this.icon, this.image,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? textColor;
  final IconData? icon;
  final String? image;
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
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
           if (image != null) Image.asset(image!, fit: BoxFit.contain),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(icon, color: textColor, size: 16),
          ],
        ),
      ),
    );
  }
}
