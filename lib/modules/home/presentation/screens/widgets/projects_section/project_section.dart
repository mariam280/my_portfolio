import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_images.dart';
import 'package:my_portfolio/core/constants/const_var.dart';
import 'package:my_portfolio/core/function/open_url.dart';
import 'package:my_portfolio/core/widgets/section_name.dart';
import 'package:my_portfolio/modules/home/data/models/project_model.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_item.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      spacing: 20,
      children: [
        SectionName(sectionName: "Featured Projects"),
        isMobile
            ? Column(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: "Firebase",
                      tool3: "REST API",
                      image: Assets.imagesPro1,
                      title: "Newsify",
                      descreption:
                          "A modern news app that keeps users updated with the latest articles and allows them to save favorite news to read later.",
                      onTapGit: () {
                        openUrl(newsifyGitHub);
                      },
                      onTapDemo: () {
                        openUrl(newsifyDemo);
                      },
                    ),
                  ),
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: " Hive ",
                      tool3: " Gemini Api ",
                      image: Assets.imagesPro2,
                      title: "AI Chat",
                      descreption:
                          "An AI chat application that allows users to ask questions and receive instant helpful responses through a conversational interface.",
                      onTapGit: () {
                        openUrl(aiGitHub);
                      },
                      onTapDemo: () {
                        openUrl(aiDemo);
                      },
                    ),
                  ),
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: " Hive ",
                      tool3: " Flutter ",
                      image: Assets.imagesPro3,
                      title: "MTodo",
                      descreption:
                          "A simple task manager that helps users organize daily tasks by adding, editing, completing, and tracking them easily.",
                      onTapGit: () {
                        openUrl(mtodoGitHub);
                      },
                      onTapDemo: () {
                        openUrl(mtodoDemo);
                      },
                    ),
                  ),
                ],
              )
            : Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: "Firebase",
                      tool3: "REST API",
                      image: Assets.imagesPro1,
                      title: "Newsify",
                      descreption:
                          "A modern news app that keeps users updated with the latest articles and allows them to save favorite news to read later.",
                      onTapGit: () {
                        openUrl(newsifyGitHub);
                      },
                      onTapDemo: () {
                        openUrl(newsifyDemo);
                      },
                    ),
                  ),
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: " Hive ",
                      tool3: " Gemini Api ",
                      image: Assets.imagesPro2,
                      title: "AI Chat",
                      descreption:
                          "An AI chat application that allows users to ask questions and receive instant helpful responses through a conversational interface.",
                      onTapGit: () {
                        openUrl(aiGitHub);
                      },
                      onTapDemo: () {
                        openUrl(aiDemo);
                      },
                    ),
                  ),
                  ProjectItem(
                    projectModel: ProjectModel(
                      tool1: "State Management",
                      tool2: " Hive ",
                      tool3: " Flutter ",
                      image: Assets.imagesPro3,
                      title: "MTodo",
                      descreption:
                          "A simple task manager that helps users organize daily tasks by adding, editing, completing, and tracking them easily.",
                      onTapGit: () {
                        openUrl(mtodoGitHub);
                      },
                      onTapDemo: () {
                        openUrl(mtodoDemo);
                      },
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
