import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';
import 'package:my_portfolio/core/widgets/hover_button_wrapper.dart';

import 'name_with_span.dart';

class HeroSectionBody extends StatelessWidget {
  const HeroSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NameWithSpan(),
        Text(
          "Flutter Developer",
          style: AppStyles.styleMedium16Grey(context).copyWith(fontSize: 30),
        ),
        Text(
          "Flutter Developer focused on helping clients turn their ideas into reliable and user-friendly mobile applications. I care about understanding the problem first, then building solutions that deliver real value.",
          style: AppStyles.styleMedium16Grey(context).copyWith(fontSize: 18),
        ),
        isMobile
            ? Column(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180,
                    child: HoverButtonWrapper(
                      glow: AppColors.purple.withValues(alpha: 0.4),
                      scaleAfter: 1.02,
                      child: CustomGradientButton(
                        text: ' View Projects ',
                        textColor: AppColors.kWhite,
                        icon: Icons.arrow_forward,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: HoverButtonWrapper(
                      glow: AppColors.borderPurple.withValues(alpha: 0.5),
                         borderColor: AppColors.purple,
                         scaleAfter: 1.02,
                      child: CustomButon(
                        text: " Contact Me ",
                        textColor: AppColors.kWhite,
                        image: Assets.imagesMailIcon,
                        borderColor: Border.all(color: AppColors.borderPurple),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: HoverButtonWrapper(
                     glow: AppColors.borderPink.withValues(alpha: 0.5),
                      borderColor: AppColors.pink,
                      scaleAfter: 1.02,
                      child: CustomButon(
                        text: " Resume ",
                        textColor: AppColors.kWhite,
                        image: Assets.imagesDownloadIcon,
                        borderColor: Border.all(color: AppColors.borderPink),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Expanded(
                        child: HoverButtonWrapper(
                          glow: AppColors.purple.withValues(alpha: 0.6),
                          scaleAfter: 1.02,
                          child: CustomGradientButton(
                            text: ' View Projects ',
                            textColor: AppColors.kWhite,
                            icon: Icons.arrow_forward,
                          ),
                        ),
                      ),
                      Expanded(
                        child: HoverButtonWrapper(
                          glow: AppColors.borderPurple.withValues(alpha: 0.5),
                         borderColor: AppColors.purple,
                         scaleAfter: 1.02,
                          child: CustomButon(
                            text: " Contact Me ",
                            textColor: AppColors.kWhite,
                            image: Assets.imagesMailIcon,
                            borderColor: Border.all(color: AppColors.borderPurple),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 147, 
                    child: HoverButtonWrapper(
                      glow: AppColors.borderPink.withValues(alpha: 0.5),
                      borderColor: AppColors.pink,
                      scaleAfter: 1.02,
                      child: CustomButon(
                        text: " Resume ",
                        textColor: AppColors.kWhite,
                        image: Assets.imagesDownloadIcon,
                        borderColor: Border.all(color: AppColors.borderPink),
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
