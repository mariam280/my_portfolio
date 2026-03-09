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
    final bool isMobile = MediaQuery.of(context).size.width < 700;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 12),
      child: Column(
        spacing: 16,
        children: [
           Divider(
            color: AppColors.borderPurple,
            thickness: 0.4,
            indent: 30,
            endIndent: 30,
          ),
         isMobile?
         Wrap(
            spacing: 10,
            runSpacing: 8,
            children: [
              CustomButon(
                height: 41,
                onTap: onTapGit,
                text: "GitHub",
                textColor: AppColors.kWhite,
                image: Assets.imagesGithubIcon,
                borderColor: Border.all(color: AppColors.purple),
              ),
              CustomGradientButton(
                height: 41,
                onTap: onTapDemo,
                text: 'Live Demo',
                textColor: AppColors.kWhite,
                image: Assets.imagesExternalLinkIcon,
              ),
            ],
          )
          : Row(
            spacing: 8,
            children: [
              Flexible(
                child: CustomButon(
                  height: 41,
                  onTap: onTapGit,
                  text: "GitHub",
                  textColor: AppColors.kWhite,
                  image: Assets.imagesGithubIcon,
                  borderColor: Border.all(color: AppColors.purple),
                ),
              ),
              Flexible(
                child: CustomGradientButton(
                  height: 41,
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
  }
}
