import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/widgets/adaptive_layout_widget.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/app_drawer.dart';

import 'widgets/mobile_layout.dart';
import 'widgets/tablet_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      endDrawer: MediaQuery.of(context).size.width < 1024
          ? AppDrawer()
          : null,
      body: SafeArea(
        child: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const TabletLayout(),
        ),
      ),
    );
  }
}
