import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});
  final List<String> categories = ["About", "Skill", "projects", "Contact"];
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.3),
            border: Border(
              bottom: BorderSide(
                color: Colors.purple.withValues(alpha: 0.3),
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(Assets.imagesAvatar),
                  backgroundColor: AppColors.backgroundColor,
                  radius: 50,
                ),
              ),
              Spacer(),
              Wrap(
                children: categories
                    .map(
                      (category) => Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          category,
                          style: AppStyles.styleRegular18(
                            context,
                          ).copyWith(fontSize: 16),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
