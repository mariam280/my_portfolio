import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/function/scroll_to_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/contact_section/contact_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/custom_app_bar.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/hero_section.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/skills_section/skills_section.dart';
import 'about_section/about_section.dart';
import 'contact_section/footer_section.dart';
import 'projects_section/project_section.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key, required this.heroKey, required this.aboutKey, required this.skillKey, required this.projectKey, required this.contactKey});
  final GlobalKey heroKey;
  final GlobalKey aboutKey;
  final GlobalKey skillKey;
  final GlobalKey projectKey;
  final GlobalKey contactKey;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeroSection(key:  widget.heroKey),
                  AboutSection(key: widget.aboutKey),
                  SkillsSection(key: widget.skillKey),
                  ProjectSection(key: widget.projectKey),
                  ContactSection(key: widget.contactKey),
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
            child: CustomAppBar(
              onTap: (index) {
                if (index == 0) scrollToSection(widget.aboutKey);
                if (index == 1) scrollToSection(widget.skillKey);
                if (index == 2) scrollToSection(widget.projectKey);
                if (index == 3) scrollToSection(widget.contactKey);
              },
            ),
          ),
        ),
      ],
    );
  }
}
