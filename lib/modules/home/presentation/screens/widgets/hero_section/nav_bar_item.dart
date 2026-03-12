import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class NavBarItem extends StatefulWidget {
  const NavBarItem({super.key, required this.text});

  final String text;

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHover = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        style: AppStyles.styleRegular18(context).copyWith(
          fontSize: isHover ? 18 : 16,
          color: isHover ? AppColors.kWhite : AppColors.kGrey,
        ),
        child: Text(widget.text),
      ),
    );
  }
}
