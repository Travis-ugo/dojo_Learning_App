import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class SoundSeekProgress extends StatelessWidget {
  const SoundSeekProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        LinearProgressIndicator(
          value: 0.40,
          backgroundColor: Colors.white.withOpacity(0.3),
          color: const Color.fromARGB(255, 255, 255, 255),
          minHeight: 4,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(text: '1:53', fontColor: Colors.grey.shade500),
            AppText(text: '3:54', fontColor: Colors.grey.shade500),
          ],
        ),
      ],
    );
  }
}
