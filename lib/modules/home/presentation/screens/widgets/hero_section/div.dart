import 'package:flutter/widgets.dart';

class Div extends StatelessWidget {
  const Div({
    super.key,
    required this.backgorundColor,
    required this.borderColor,
    required this.text,
    required this.textStyle,
  });
  final Color backgorundColor, borderColor;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: ShapeDecoration(
          color: backgorundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.80, color: borderColor),
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x26A855F7),
              blurRadius: 15,
              offset: Offset(0, 0),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Text(text, style: textStyle),
      ),
    );
  }
}
