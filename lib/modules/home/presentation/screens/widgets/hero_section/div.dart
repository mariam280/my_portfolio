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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16.80),
      decoration: ShapeDecoration(
        color: backgorundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.80, color: borderColor),
          borderRadius: BorderRadius.circular(26843500),
        ), //************************ */
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
    );
  }
}
