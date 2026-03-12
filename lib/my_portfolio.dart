import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/home/presentation/screens/home_screen.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeScreen());
  }
}
