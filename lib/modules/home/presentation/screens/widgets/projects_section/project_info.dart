import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:my_portfolio/core/widgets/size.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/div.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.title,
    required this.descreption,
    required this.tool1,
    required this.tool2,
    required this.tool3,
  });
  final String title, descreption, tool1, tool2, tool3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: AppStyles.styleBold72(context).copyWith(fontSize: 24),
            ),
          ),
          Text(
            descreption,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular18(context).copyWith(fontSize: 14),
          ),
          Wrap(
            spacing: 6,
            children: [
              Div(
                backgorundColor: AppColors.opacityPink,
                borderColor: AppColors.borderPink,
                text: tool1,
                textStyle: AppStyles.styleMedium16White(
                  context,
                ).copyWith(fontSize: 12, color: AppColors.pink),
              ),
              Div(
                backgorundColor: AppColors.opacityPink,
                borderColor: AppColors.borderPink,
                text: tool2,
                textStyle: AppStyles.styleMedium16White(
                  context,
                ).copyWith(fontSize: 12, color: AppColors.pink),
              ),
              Div(
                backgorundColor: AppColors.opacityPink,
                borderColor: AppColors.borderPink,
                text: tool3,
                textStyle: AppStyles.styleMedium16White(
                  context,
                ).copyWith(fontSize: 12, color: AppColors.pink),
              ),
            ],
          ),
          CustomSize(h:16),
        ],
      ),
    );
  }
}
