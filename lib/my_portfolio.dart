import 'package:flutter/material.dart';
import 'package:my_portfolio/modules/home/presentation/screens/home_screen.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen());
  }
}
