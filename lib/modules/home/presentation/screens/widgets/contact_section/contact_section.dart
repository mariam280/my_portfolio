import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_card.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/contact_cta.dart';
import 'action_buttons.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.1;
    return CustomCard(
      borderColor: AppColors.borderPurple,
      elevation: 0,
      cardColor: AppColors.cardColor,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(size),
          child: Column(
            spacing: 25,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ContactCta(), ActionButtons()],
          ),
        ),
      ),
    );
  }
}
