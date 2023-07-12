
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class CurrentPlanCard extends StatelessWidget {
  const CurrentPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 37, 35, 35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: 'Fugoku Free',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontColor: Colors.grey[200],
          ),
          AppText(
            text: 'CURRENT PLAN',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontColor: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}
