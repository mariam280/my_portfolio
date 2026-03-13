import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'nav_bar_item.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key,required this.onTap});
  final Function(int index) onTap;
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
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Wrap(
                  spacing: 30,
                  children: List.generate(
                    categories.length,
                    (index) => TweenAnimationBuilder(
                      duration: Duration(milliseconds: 400 + (index * 100)),
                      tween: Tween(begin: 20.0, end: 0.0),
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(0, value),
                          child: Opacity(
                            opacity: value == 0 ? 1 : 0,
                            child: child,
                          ),
                        );
                      },
                      child: NavBarItem(
                        text: categories[index],
                        onTap: () => onTap(index),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
