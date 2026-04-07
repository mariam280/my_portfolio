import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/adaptive_layout_widget.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section/app_drawer.dart';

import 'widgets/mobile_layout.dart';
import 'widgets/tablet_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final heroKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      endDrawer: MediaQuery.of(context).size.width < 1024
          ? AppDrawer(
              aboutKey: aboutKey,
              skillKey: skillKey,
              projectKey: projectKey,
              contactKey: contactKey,
            )
          : null,
      body: SafeArea(
        child: AdaptiveLayout(
          mobileLayout: (context) => MobileLayout(
            heroKey: heroKey,
            aboutKey: aboutKey,
            skillKey: skillKey,
            projectKey: projectKey,
            contactKey: contactKey,
          ),
          tabletLayout: (context) => TabletLayout(
            heroKey: heroKey,
            aboutKey: aboutKey,
            skillKey: skillKey,
            projectKey: projectKey,
            contactKey: contactKey,
          ),
          desktopLayout: (context) => TabletLayout(
            heroKey: heroKey,
            aboutKey: aboutKey,
            skillKey: skillKey,
            projectKey: projectKey,
            contactKey: contactKey,
          ),
        ),
      ),
    );
  }
}
