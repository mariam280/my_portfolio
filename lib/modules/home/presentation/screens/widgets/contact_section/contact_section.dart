import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custome_ratio_card.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/contact_cta.dart';
import 'action_buttons.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRatioCard(
      aspectRatio: 896 / 419,
      borderColor: AppColors.borderPurple,
      elevation: 0,
      cardColor: AppColors.cardColor,
      child: Center(
        child: Column(
          spacing: 25,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactCta(),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
}
