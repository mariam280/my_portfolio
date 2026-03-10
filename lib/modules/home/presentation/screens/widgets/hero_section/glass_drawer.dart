import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class GlassDrawer extends StatelessWidget {
  const GlassDrawer({super.key});

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
                width: 1,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(Assets.imagesAvatar),
                    backgroundColor: AppColors.backgroundColor,
                    radius: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.menu, size: 20, color: AppColors.kWhite),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
