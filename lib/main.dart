import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/my_portfolio.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context)=> const MyPortfolio()));
}
