import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class ContactCta extends StatelessWidget {
  const ContactCta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Let\'s build something\n',
                style: AppStyles.styleBold72(context).copyWith(fontSize: 48),
              ),
              TextSpan(
                text: 'amazing together.',
                style: AppStyles.styleBold72Gradient(
                  context,
                ).copyWith(fontSize: 48),
              ),
            ],
          ),
        ),
         Text(
            "Whether you have a project in mind or just want to say hi, feel\nfree to reach out. I'm always open to new opportunities!",
            style: AppStyles.styleRegular18(context),
          ),
      ],
    );
  }
}