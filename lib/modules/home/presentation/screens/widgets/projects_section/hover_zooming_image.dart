import 'package:flutter/material.dart';

class HoverZoomImage extends StatefulWidget {
  const HoverZoomImage({super.key, required this.image});

  final String image;

  @override
  State<HoverZoomImage> createState() => _HoverZoomImageState();
}

class _HoverZoomImageState extends State<HoverZoomImage> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: AnimatedScale(
          scale: isHover ? 1.12 : 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          child: Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}