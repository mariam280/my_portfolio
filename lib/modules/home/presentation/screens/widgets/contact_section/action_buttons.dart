import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/constants/const_var.dart';
import 'package:my_portfolio/core/function/open_url.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';
import 'package:my_portfolio/core/widgets/hover_button_wrapper.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 600) {
      return Row(
        spacing: 12,
        children: [
          Expanded(
            child: HoverButtonWrapper(
              glow: AppColors.purple.withValues(alpha: 0.4),
              scaleAfter: 1.02,
              child: CustomGradientButton(
                text: "Email Me",
                textColor: AppColors.kWhite,
                image: Assets.imagesMailIcon,
                onTap: () {
                  openUrl(myEmail);
                },
              ),
            ),
          ),
          Expanded(
            child: HoverButtonWrapper(
              glow: AppColors.borderPurple.withValues(alpha: 0.5),
              borderColor: AppColors.purple,
              scaleAfter: 1.02,
              child: CustomButon(
                text: 'GitHub',
                textColor: AppColors.kWhite,
                image: Assets.imagesGithubIcon,
                onTap: () {
                  openUrl(gitHubLink);
                },
                borderColor: Border.all(color: AppColors.borderPurple),
              ),
            ),
          ),
          Expanded(
            child: HoverButtonWrapper(
              glow: AppColors.borderPink.withValues(alpha: 0.5),
              borderColor: AppColors.pink,
              scaleAfter: 1.02,
              child: CustomButon(
                text: "LinkedIn",
                textColor: AppColors.kWhite,
                image: Assets.imagesLinkedinIcon,
                onTap: () {
                  openUrl(linkdenLink);
                },
                borderColor: Border.all(color: AppColors.borderPink),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          SizedBox(
            width: screenWidth * 0.42,
            child: HoverButtonWrapper(
              glow: AppColors.purple.withValues(alpha: 0.4),
              scaleAfter: 1.02,
              child: CustomGradientButton(
                text: "Email Me",
                textColor: AppColors.kWhite,
                image: Assets.imagesMailIcon,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.38,
            child: HoverButtonWrapper(
              glow: AppColors.borderPurple.withValues(alpha: 0.5),
              borderColor: AppColors.purple,
              scaleAfter: 1.02,
              child: CustomButon(
                text: 'GitHub',
                textColor: AppColors.kWhite,
                image: Assets.imagesGithubIcon,
                borderColor: Border.all(color: AppColors.borderPurple),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.42,
            child: HoverButtonWrapper(
              glow: AppColors.borderPink.withValues(alpha: 0.5),
              borderColor: AppColors.pink,
              scaleAfter: 1.02,
              child: CustomButon(
                text: "LinkedIn",
                textColor: AppColors.kWhite,
                image: Assets.imagesLinkedinIcon,
                borderColor: Border.all(color: AppColors.borderPink),
              ),
            ),
          ),
        ],
      );
    }
  }
}
