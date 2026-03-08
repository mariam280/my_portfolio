import 'package:flutter/widgets.dart';
import 'package:my_portfolio/modules/home/presentation/screens/widgets/hero_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            HeroSection(),
          ],
        ),
      ),
    );
  }
}
