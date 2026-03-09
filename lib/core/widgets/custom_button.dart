import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({
    super.key,
    this.onTap,
    required this.text,
    this.buttonColor,
    this.textColor,
    this.icon,
    this.borderColor,
    this.image,
  });
  final VoidCallback? onTap;
  final String text;
  final Color? buttonColor, textColor;
  final IconData? icon;
  final BoxBorder? borderColor;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
          border: borderColor ?? Border.all(color: Colors.grey.shade300),
        ),
        height: 58,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
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
      ),
    );
  }
}
