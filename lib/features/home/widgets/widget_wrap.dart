import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class WidgetWrap extends StatelessWidget {
  const WidgetWrap({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      margin: const EdgeInsets.only(right: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(30),
      ),
      child: AppText(
        text: label,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
