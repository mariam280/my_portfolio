import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 518,
      child: Row(
        spacing: 12,
        children: [
          Flexible(
            child: CustomGradientButton(
              text: " Email Me ",
              textColor: AppColors.kWhite,
              image: Assets.imagesMailIcon,
            ),
          ),
          Flexible(
            child: CustomButon(
              text: ' GitHub ',
              textColor: AppColors.kWhite,
              image: Assets.imagesGithubIcon,
              borderColor: Border.all(color: AppColors.purple),
            ),
          ),
          Flexible(
            child: CustomButon(
              text: " LinkedIn ",
              textColor: AppColors.kWhite,
              image: Assets.imagesLinkedinIcon,
              borderColor: Border.all(color: AppColors.pink),
            ),
          ),
        ],
      ),
    );
  }
}
