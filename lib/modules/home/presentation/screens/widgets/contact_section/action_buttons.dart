import 'package:flutter/material.dart'; 
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';

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
            child: CustomGradientButton(
              text: "Email Me",
              textColor: AppColors.kWhite,
              image: Assets.imagesMailIcon,
            ),
          ),
          Expanded(
            child: CustomButon(
              text: 'GitHub',
              textColor: AppColors.kWhite,
              image: Assets.imagesGithubIcon,
              borderColor: Border.all(color: AppColors.purple),
            ),
          ),
          Expanded(
            child: CustomButon(
              text: "LinkedIn",
              textColor: AppColors.kWhite,
              image: Assets.imagesLinkedinIcon,
              borderColor: Border.all(color: AppColors.pink),
            ),
          ),
        ],
      );
    } 
    else {
      return Column(
        mainAxisSize: MainAxisSize.min,  
        spacing: 12,
        children: [
          SizedBox(  
            width: screenWidth * 0.42,
            child: CustomGradientButton(
              text: "Email Me",
              textColor: AppColors.kWhite,
              image: Assets.imagesMailIcon,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.38,
            child: CustomButon(
              text: 'GitHub',
              textColor: AppColors.kWhite,
              image: Assets.imagesGithubIcon,
              borderColor: Border.all(color: AppColors.purple),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.42,
            child: CustomButon(
              text: "LinkedIn",
              textColor: AppColors.kWhite,
              image: Assets.imagesLinkedinIcon,
              borderColor: Border.all(color: AppColors.pink),
            ),
          ),
        ],
      );
    }
  }
}