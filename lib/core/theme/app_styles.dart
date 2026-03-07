import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

abstract class AppStyles {
static TextStyle styleBold72(BuildContext context) {
  return TextStyle(
    color: AppColors.kWhite,
    fontSize: getResponsiveFontSize(context, fontSize: 72),  // 48
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    height: 1.0, 
    letterSpacing: -1.8, 
  );
}

 static TextStyle styleBold72Gradient(BuildContext context) {
  return TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 72), // 14, 48
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    height: 1.0,    // 1.4
    letterSpacing: -1.8,
    foreground: Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.purple, 
          AppColors.pink, 
        ],
      ).createShader(const Rect.fromLTWH(0, 0, 300, 72)),
  );
}

static TextStyle styleRegular18(BuildContext context) {
  return TextStyle(
    color: AppColors.kGrey,
    fontSize: getResponsiveFontSize(context, fontSize: 18),   // 14
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 1.625,          // 1.55
    letterSpacing: 0,
  );
}

 static TextStyle styleMedium16Grey(BuildContext context) {
  return TextStyle(
    color: AppColors.kGrey,    
    fontSize: getResponsiveFontSize(context, fontSize: 16),  // 30
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.5, 
    letterSpacing: 0,
  );
}

 static TextStyle styleMedium16White(BuildContext context) {
  return TextStyle(
    color: AppColors.kWhite,    // appColors.pink
    fontSize: getResponsiveFontSize(context, fontSize: 16),  // 18, 12
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 1.5, 
    letterSpacing: 0,
  );
}

}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .9;
  double upperLimit = fontSize * 1.1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1024) {
    return width / 800;
  } else {
    return width / 1000;
  }
}
