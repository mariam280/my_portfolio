
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/custom_button.dart';
import 'package:my_portfolio/core/widgets/custom_gradient_button.dart';

import 'name_with_span.dart';

class HeroSectionBody extends StatelessWidget {
  const HeroSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NameWithSpan(),
        Text(
          "Flutter Developer",
          style: AppStyles.styleMedium16Grey(
            context,
          ).copyWith(fontSize: 30),
        ),
        Text(
          "Flutter Developer focused on helping clients turn their ideas into reliable and user-friendly mobile applications. I care about understanding the problem first, then building solutions that deliver real value.",
          style: AppStyles.styleMedium16Grey(
            context,
          ).copyWith(fontSize: 18),
        ),
        Row(
          spacing: 12,
          children: [
            Expanded(
              child: CustomGradientButton(
                text: ' View Projects ',
                textColor: AppColors.kWhite,
                icon: Icons.arrow_forward,
              ),
            ),
            Expanded(
              child: CustomButon(
                text: " Contact Me ",
                textColor: AppColors.kWhite,
                icon: Icons.email_outlined,
                borderColor: Border.all(color: AppColors.purple),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 147,
          child: CustomButon(
            text: " Resume ",
            textColor: AppColors.kWhite,
            icon: Icons.file_download_outlined,
            borderColor: Border.all(color: AppColors.pink),
          ),
        ),
      ],
    );
  }
}
