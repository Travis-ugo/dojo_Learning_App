// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/text.dart';

class SquareWithLabel extends StatelessWidget {
  const SquareWithLabel({
    Key? key,
    this.direction = Axis.vertical,
    this.withSubTitle = true,
    this.isUnique = false,
    this.size = 180,
    this.mockData,
  }) : super(key: key);

  final Axis direction;
  final bool withSubTitle;
  final bool isUnique;
  final double size;
  final DataModel? mockData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: SizedBox(
        width: size,
        child: Flex(
          crossAxisAlignment: direction == Axis.horizontal
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          direction: direction,
          children: [
            Stack(
              children: [
                Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blueAccent,
                    image: DecorationImage(
                      image: AssetImage("assets/images/${mockData!.imagePath }"),
                    ),
                  ),
                ),
                isUnique
                    ? Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 18,
                          width: 18,
                          margin: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: direction == Axis.horizontal ? 0 : 10,
                horizontal: direction == Axis.horizontal ? 8 : 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: mockData!.artistName ?? "No Name",
                    fontWeight: direction == Axis.horizontal
                        ? FontWeight.w300
                        : FontWeight.w700,
                  ),
                  direction == Axis.horizontal
                      ? Column(
                          children: [
                            AppText(
                              text:  'More Like',
                              fontWeight: direction == Axis.horizontal
                                  ? FontWeight.w700
                                  : FontWeight.w300,
                              fontSize: direction == Axis.horizontal ? 24 : 16,
                            ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
