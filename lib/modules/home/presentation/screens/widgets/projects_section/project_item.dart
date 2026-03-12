import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_card.dart';
import 'package:my_portfolio/core/widgets/hover_button_wrapper.dart';
import 'package:my_portfolio/modules/home/data/models/project_model.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_info.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_section_footer.dart';

import 'hover_zooming_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return SizedBox(
      width: isMobile
          ? double.infinity
          : MediaQuery.of(context).size.width * 0.28,
      child: HoverButtonWrapper(
        glow: AppColors.backgroundColor.withValues(alpha: 0.5),
        scaleAfter: 1.05 ,
        child: CustomCard(
          cardColor: AppColors.cardColor,
          borderColor: AppColors.borderPurple,
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.3,
                child: HoverZoomImage(image: projectModel.image),
              ),
              ProjectInfo(
                title: projectModel.title,
                descreption: projectModel.descreption,
                tool1: projectModel.tool1,
                tool2: projectModel.tool2,
                tool3: projectModel.tool3,
              ),
              ProjectSectionFooter(
                onTapGit: projectModel.onTapGit,
                onTapDemo: projectModel.onTapDemo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
