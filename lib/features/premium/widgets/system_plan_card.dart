
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/app_button.dart';
import 'package:fugoku/core/widgets/text.dart';

class SystemPlanCard extends StatelessWidget {
  const SystemPlanCard({
    Key? key,
    this.secondButton = false,
    this.secondButtonLabel,
    this.secondButtonCallBack,
    this.cardColor,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.cardSubSubtitle,
    required this.bodyText,
    required this.buttonLabel,
    required this.onTap,
    this.gradient,
  }) : super(key: key);

  final bool secondButton;
  final String? secondButtonLabel;
  final VoidCallback? secondButtonCallBack;

  final Color? cardColor;
  final String cardTitle;
  final String cardSubtitle;
  final String cardSubSubtitle;
  final String bodyText;
  final String buttonLabel;
  final VoidCallback onTap;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      margin:  const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: cardColor,
        gradient: gradient,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: cardTitle,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontColor: Colors.grey[200],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppText(
                    text: cardSubtitle,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontColor: Colors.grey[300],
                  ),
                  const SizedBox(height: 8),
                  AppText(
                    text: cardSubSubtitle,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontColor: Colors.grey[300],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          AppText(
            text: bodyText,
            fontSize: 18,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            fontWeight: FontWeight.w400,
            fontColor: Colors.grey[200],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: AppButton(
              onTap: () {},
              buttonText: buttonLabel,
              buttonMinWidth: 200,
            ),
          ),
          secondButton
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: AppButton(
                    onTap: () {},
                    buttonText: secondButtonLabel ?? "PREPAID PLANS",
                    buttonMinWidth: 200,
                  ),
                )
              : const SizedBox(),
          const SizedBox(height: 10),
          AppText(
            text:
                'commodo viverra maecenas accumsan. Adipiscing commodo elit at imperdiet dui.',
            fontSize: 12,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            fontWeight: FontWeight.w300,
            fontColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
