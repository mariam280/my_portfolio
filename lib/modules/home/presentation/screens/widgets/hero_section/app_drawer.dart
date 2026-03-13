import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

import 'drawer_item_hover.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Drawer(
        backgroundColor: AppColors.opacityPink.withValues(alpha: 0.4),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(Assets.imagesAvatar, fit: BoxFit.contain),
            ),
            DrawerItemHover(text: "About", onTap: () {}),
            DrawerItemHover(text: "Skills", onTap: () {}),
            DrawerItemHover(text: "Projects", onTap: () {}),
            DrawerItemHover(text: "Contact", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
