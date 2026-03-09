import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/contact_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/hero_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/skills_section/skills_section.dart';
import 'about_section/about_section.dart';
import 'contact_section/footer_section.dart';
import 'projects_section/project_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 30,
          children: [
            HeroSection(),
            AboutSection(),
            SkillsSection(),
            ProjectSection(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}