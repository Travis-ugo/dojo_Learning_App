// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';

class RectangleSlide extends StatelessWidget {
  const RectangleSlide({
    Key? key,
    this.mockData,
    required this.onTap,
  }) : super(key: key);

  final DataModel? mockData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900],
        ),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                height: 80,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                     fit: BoxFit.fill,
                    image: AssetImage("assets/images/${mockData!.imagePath}"),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  gradient: const LinearGradient(
                    transform: GradientRotation(-60 * pi / 180),
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurpleAccent,
                      Color(0xFFE2E2E2),
                    ],
                  ),
                ),
                child: Center(
                  child: mockData != null 
                      ? const SizedBox()
                      : const Icon(CupertinoIcons.heart_fill,
                          color: Colors.white),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: AppText(
                text: mockData!.artistName ?? 'Liked Songs',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
