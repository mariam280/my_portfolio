import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/core/theme/app_styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SectionName extends StatelessWidget {
  const SectionName({super.key, required this.sectionName});
  final String sectionName;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            sectionName,
            style: AppStyles.styleBold72Gradient(context).copyWith(fontSize: 48),
          ).animate().fade(duration: 400.ms).slideY(begin: 0.2, duration: 400.ms),
        ),
        Container(
          width: 80,
          height: 4,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.50, 0.00),
              end: Alignment(0.50, 1.00),
              colors: [AppColors.purple, AppColors.pink],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26843500),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x7FA855F7),
                blurRadius: 10,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
