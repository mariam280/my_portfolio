import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/widgets/section_name.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/skills_section/skill_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
      SectionName(sectionName: "Skills & Technologies"),
      Wrap(
        spacing: 16,
        runSpacing: 8,
        children: [
          SkillsItem(image: Assets.imagesFlutterSkill, text: "Flutter"),
          SkillsItem(image: Assets.imagesDartSkill, text: "Dart"),
          SkillsItem(image: Assets.imagesFirebaseSkill, text: "Firebase"),
          SkillsItem(image: Assets.imagesApiSkill, text: "REST APIs"),
          SkillsItem(image: Assets.imagesBlocSkill, text: "Cubit / BLoC"),
          SkillsItem(image: Assets.imagesSqlSkill, text: "SQL"),
          SkillsItem(image: Assets.imagesGitSkill, text: "Git"),
      ],),
    ],);
  }
}