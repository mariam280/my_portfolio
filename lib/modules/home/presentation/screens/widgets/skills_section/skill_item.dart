import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/custome_ratio_card.dart';

class SkillsItem extends StatelessWidget {
  const SkillsItem({super.key, required this.image, required this.text});
  final String image, text;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600
        ? true
        : false;
    return SizedBox(
       width: 180,
       height: 141.60,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: CustomRatioCard(
          aspectRatio:isMobile? 1: 1.6,
          elevation: 0,
          borderColor: AppColors.borderPurple.withValues(alpha: 0.4),
          cardColor: AppColors.cardColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(image, fit: BoxFit.contain),
                  Text(
                    text,
                    style: AppStyles.styleMedium16White(
                      context,
                    ).copyWith(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
