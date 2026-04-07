import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/function/scroll_to_section.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

import 'drawer_item_hover.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.aboutKey,
    required this.skillKey,
    required this.projectKey,
    required this.contactKey,
  });
  final GlobalKey aboutKey;
  final GlobalKey skillKey;
  final GlobalKey projectKey;
  final GlobalKey contactKey;
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
              child: Image.asset(
                Assets.imagesAvatarwithoutback1,
                fit: BoxFit.contain,
              ),
            ),
            DrawerItemHover(
              text: "About",
              onTap: () {
                Navigator.pop(context);
                scrollToSection(aboutKey);
              },
            ),
            DrawerItemHover(
              text: "Skills",
              onTap: () {
                Navigator.pop(context);
                scrollToSection(skillKey);
              },
            ),
            DrawerItemHover(
              text: "Projects",
              onTap: () {
                Navigator.pop(context);
                scrollToSection(projectKey);
              },
            ),
            DrawerItemHover(
              text: "Contact",
              onTap: () {
                Navigator.pop(context);
                scrollToSection(contactKey);
              },
            ),
          ],
        ),
      ),
    );
  }
}
