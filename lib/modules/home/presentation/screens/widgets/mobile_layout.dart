import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/about_section/about_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/contact_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/footer_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/glass_drawer.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/hero_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/projects_section/project_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/skills_section/skills_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
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
          ),
        ),

        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: TweenAnimationBuilder(
            duration: Duration(milliseconds: 600),
            tween: Tween(begin: -80.0, end: 0.0),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, value),
                child: child,
              );
            },
            child: GlassDrawer(),
          ),
        ),
      ],
    );
  }
}
