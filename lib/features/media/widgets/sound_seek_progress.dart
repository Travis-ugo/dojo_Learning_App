import 'package:flutter/material.dart';
import 'package:fugoku/core/text.dart';

class SoundSeekProgress extends StatelessWidget {
  const SoundSeekProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                height: 4,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 0),
            ],
          ),
        ),
        const SizedBox(height: 5),
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
