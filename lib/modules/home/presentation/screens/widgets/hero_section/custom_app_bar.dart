import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key});
 final List<String> categories = ["About", "Skill", "projects", "Contact"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.imagesAvatar),
          backgroundColor: AppColors.backgroundColor,
          radius: 50,
        ),
        Spacer(),
        Wrap(
          children: categories.map((category) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(category, style: AppStyles.styleRegular18(context),),
          )).toList(),
        )
      ],
    );
  }
}
