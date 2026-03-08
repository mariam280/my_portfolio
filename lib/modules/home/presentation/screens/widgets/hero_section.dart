import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/div.dart';
import 'hero_section_body.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 26,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Div(
          backgorundColor: AppColors.opacityPurple,
          borderColor: AppColors.borderPurple,
          text: "WELCOME TO MY PORTFOLIO",
          textStyle: AppStyles.styleBold72Gradient(
            context,
          ).copyWith(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        Row(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: HeroSectionBody(),
            ),
            Expanded(child: Image.asset(Assets.imagesAvatar)),
          ],
        ),
      ],
    );
  }
}
