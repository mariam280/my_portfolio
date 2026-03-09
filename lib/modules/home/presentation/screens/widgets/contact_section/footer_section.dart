import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor
      ),
      child: Center(child: Text(" Made with Flutter by Mariam Ibrahim ", style: AppStyles.styleRegular18(context).copyWith(fontSize: 14),),),
    );
  }
}