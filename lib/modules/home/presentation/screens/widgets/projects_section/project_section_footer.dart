import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';

class ProjectSectionFooter extends StatelessWidget {
  const ProjectSectionFooter({super.key, this.onTapGit, this.onTapDemo});
  final void Function()? onTapGit, onTapDemo;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
         mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          Divider(
            color: AppColors.borderPurple,
            thickness: 0.4,
            indent: 30,
            endIndent: 30,
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                width: screenWidth > 600 ? screenWidth * 0.4 : screenWidth,
                child: CustomButon(
                  height: 40,
                  onTap: onTapGit,
                  text: "GitHub",
                  textColor: AppColors.kWhite,
                  image: Assets.imagesGithubIcon,
                  borderColor: Border.all(color: AppColors.purple),
                ),
              ),
              SizedBox(
                width: screenWidth > 600 ? screenWidth * 0.4 : screenWidth,
                child: CustomGradientButton(
                  height: 40,
                  onTap: onTapDemo,
                  text: 'Live Demo',
                  textColor: AppColors.kWhite,
                  image: Assets.imagesExternalLinkIcon,
                ),
              ),
            ],
          ),
        ],
      ),
    );

    /*    Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        spacing: 12,
        children: [
          Divider(
            color: AppColors.borderPurple,
            thickness: 0.4,
            indent: 30,
            endIndent: 30,
          ),
          isMobile
              ? Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    CustomButon(
                      height: 40,
                      onTap: onTapGit,
                      text: "GitHub",
                      textColor: AppColors.kWhite,
                      image: Assets.imagesGithubIcon,
                      borderColor: Border.all(color: AppColors.purple),
                    ),
                    CustomGradientButton(
                      height: 40,
                      onTap: onTapDemo,
                      text: 'Live Demo',
                      textColor: AppColors.kWhite,
                      image: Assets.imagesExternalLinkIcon,
                    ),
                  ],
                )
              : Row(
                  spacing: 4,
                  children: [
                    Flexible(
                      child: CustomButon(
                        height: 40,
                        onTap: onTapGit,
                        text: "GitHub",
                        textColor: AppColors.kWhite,
                        image: Assets.imagesGithubIcon,
                        borderColor: Border.all(color: AppColors.purple),
                      ),
                    ),
                    Flexible(
                      child: CustomGradientButton(
                        height: 40,
                        onTap: onTapDemo,
                        text: 'Live Demo',
                        textColor: AppColors.kWhite,
                        image: Assets.imagesExternalLinkIcon,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );*/
  }
}
