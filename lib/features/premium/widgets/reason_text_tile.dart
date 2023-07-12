
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class ReasonTextTile extends StatelessWidget {
  const ReasonTextTile({
    Key? key,
    required this.titleText,
  }) : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 30,
          ),
          const SizedBox(width: 15),
          AppText(
            text: titleText,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
