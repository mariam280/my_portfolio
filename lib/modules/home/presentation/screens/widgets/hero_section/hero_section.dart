import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/size.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/div.dart';
import 'hero_section_body.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      spacing: 26,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSize(h: 72),
        Div(
          backgorundColor: AppColors.opacityPurple,
          borderColor: AppColors.borderPurple,
          text: "WELCOME TO MY PORTFOLIO",
          textStyle: AppStyles.styleBold72Gradient(
            context,
          ).copyWith(fontWeight: FontWeight.w500, fontSize: 14),
        ).animate()
    .fade(duration: 400.ms)
    .slideY(begin: 0.2, duration: 400.ms),
        Row(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: HeroSectionBody()),
            isMobile
                ? SizedBox.shrink()
                : Expanded(child: Image.asset(Assets.imagesAvatar)),
          ],
        ),
      ],
    );
  }
}
