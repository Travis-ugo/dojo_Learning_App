// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fugoku/core/widgets/text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    this.buttonFontSize = 18,
    this.buttonFontWeight = FontWeight.w700,
    this.buttonTextColor = Colors.black,
    this.buttonMaterialColor = Colors.white,
    this.buttonMinWidth = double.infinity,
  }) : super(key: key);

  final VoidCallback onTap;
  final String buttonText;
  final double buttonFontSize;
  final FontWeight buttonFontWeight;
  final Color buttonTextColor;
  final Color buttonMaterialColor;
  final double buttonMinWidth;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: buttonMaterialColor,
      minWidth: buttonMinWidth,
      height: 55,
       padding:const EdgeInsets.symmetric(horizontal: 30),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(150),
      ),
      child: AppText(
        text: buttonText,
        fontWeight: buttonFontWeight,
        fontSize: buttonFontSize,
        fontColor: buttonTextColor,
      ),
    );
  }
}
