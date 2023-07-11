
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.fontColor,
    this.overflow = TextOverflow.ellipsis, this.textAlign,
  });

  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? fontColor;
  final TextOverflow? overflow;
  final  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      textAlign:textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,

      ),
    );
  }
}