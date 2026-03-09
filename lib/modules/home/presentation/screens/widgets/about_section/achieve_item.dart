
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/custom_card.dart';

class AboutAchieveItem extends StatelessWidget {
  const AboutAchieveItem({super.key, required this.image, required this.title, required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: 0,
      borderColor: AppColors.borderPink.withValues(alpha: 0.4),
      cardColor: AppColors.cardColor,
      child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      leading: Image.asset(image, fit: BoxFit.contain,),
      title: Text(title,style: AppStyles.styleBold72(context).copyWith(fontSize: 30),),
      subtitle: Text(subTitle, style: AppStyles.styleMedium16Grey(context),),),
    );
  }
}
