
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
          "I’m a Computer Science student and Flutter developer passionate about building functional and visually appealing mobile apps. with over one years of hands on experience in cross platform development using Flutter. I combine creativity with problem-solving to deliver impactful solutions. I focus on creating apps with clean UI and smooth user experience tailored to client’s goals",
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
