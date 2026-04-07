import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class DrawerItemHover extends StatefulWidget {
  const DrawerItemHover({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  State<DrawerItemHover> createState() => _DrawerItemHoverState();
}

class _DrawerItemHoverState extends State<DrawerItemHover> {
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
      child: ListTile(
        onTap: widget.onTap,
        title: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          style: AppStyles.styleRegular18(context).copyWith(
            fontSize: isHover ? 18 : 16,
            color: isHover ? AppColors.kWhite : AppColors.kGrey,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
