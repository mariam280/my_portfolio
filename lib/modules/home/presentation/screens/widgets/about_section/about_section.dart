import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/custom_card.dart';
import 'package:my_portfolio/core/widgets/section_name.dart';

import 'achieve_item.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      spacing: 20,
      children: [
        SectionName(sectionName: "About Me "),
      isMobile? 
      Column(
          spacing: 20,
          children: [
            CustomCard(
              borderColor: AppColors.borderPurple.withValues(alpha: 0.4),
              elevation: 0,
              cardColor: AppColors.cardColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Computer Science student and Flutter developer passionate about building modern, high-performance mobile applications. I focus on creating clean user interfaces and smooth user experiences that combine functionality with strong visual design.\n\nExperienced in Flutter and Dart with hands-on work in API integration, state management, and databases such as Firebase and SQL. I enjoy solving problems, collaborating with teams, and delivering clean, maintainable code.",
                  style: AppStyles.styleRegular18(context),
                ),
              ),
            ),
            Column(
              spacing: 10,
              children: [
                      AboutAchieveItem(image: Assets.imagesMobileAbout, title: "10+", subTitle: "Projects Built"),
                      AboutAchieveItem(image: Assets.imagesDivAbout, title: "8+", subTitle: "Technologies Used"),
                      AboutAchieveItem(image: Assets.imagesDivAbout2, title: "Flutter & UI/UX", subTitle: "Learing Focus")
                    ],),
          ],
        )
      : Row(
          spacing: 20,
          children: [
            Expanded(
              child: CustomCard(
                borderColor: AppColors.borderPurple.withValues(alpha: 0.4),
                elevation: 0,
                cardColor: AppColors.cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Computer Science student and Flutter developer passionate about building modern, high-performance mobile applications. I focus on creating clean user interfaces and smooth user experiences that combine functionality with strong visual design.\n\nExperienced in Flutter and Dart with hands-on work in API integration, state management, and databases such as Firebase and SQL. I enjoy solving problems, collaborating with teams, and delivering clean, maintainable code.",
                    style: AppStyles.styleRegular18(context),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 10,
                children: [
                        AboutAchieveItem(image: Assets.imagesMobileAbout, title: "10+", subTitle: "Projects Built"),
                        AboutAchieveItem(image: Assets.imagesDivAbout, title: "8+", subTitle: "Technologies Used"),
                        AboutAchieveItem(image: Assets.imagesDivAbout2, title: "Flutter & UI/UX", subTitle: "Learing Focus")
                      ],),
            ),
          ],
        ),
      ],
    );
  }
}
