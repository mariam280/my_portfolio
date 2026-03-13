import 'package:flutter/widgets.dart';

void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(context,
    duration: const Duration(milliseconds: 600),
    curve: Curves.easeOutCubic);
  }
}
