import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custom_card.dart';
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
    );
  }
}




/**
 * import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/custome_ratio_card.dart';
import 'package:my_portfolio/modules/home/data/models/project_model.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_info.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_section_footer.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return SizedBox(
       width: MediaQuery.of(context).size.width * 0.28,
      child: CustomRatioCard(
        aspectRatio: isMobile? 0.6: 288/619,
        cardColor: AppColors.cardColor,
        borderColor: AppColors.borderPurple,
        borderRadius: 16,
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image(
                  image: AssetImage(projectModel.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ProjectInfo(
              title: projectModel.title,
              descreption: projectModel.descreption,
              tool1: projectModel.tool1,
              tool2: projectModel.tool2,
              tool3: projectModel.tool3,
            ),
            Spacer(),
            ProjectSectionFooter(
              onTapGit: projectModel.onTapGit,
              onTapDemo: projectModel.onTapDemo,
            ),
          ],
        ),
      ),
    );
  }
}

 */