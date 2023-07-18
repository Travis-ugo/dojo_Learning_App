// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';

class CircularWithLabel extends StatelessWidget {
  const CircularWithLabel({
    Key? key,
    this.direction = Axis.vertical,
    this.withSubTitle = false,
    this.size = 180,
    required this.onTap,
    this.mockData,
  }) : super(key: key);

  final Axis direction;
  final bool withSubTitle;
  final double size;
  final VoidCallback onTap;
  final DataModel? mockData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 8,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: size,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.start,
            direction: direction,
            children: [
              Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/${mockData!.imagePath}"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: direction == Axis.horizontal ? 0 : 10,
                  horizontal: direction == Axis.horizontal ? 8 : 0,
                ),
                child: Column(
                  crossAxisAlignment: direction == Axis.horizontal
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      text: mockData!.artistName ?? "No Name",
                      fontWeight: direction == Axis.horizontal
                          ? FontWeight.w300
                          : FontWeight.w700,
                    ),
                    direction == Axis.horizontal
                        ? AppText(
                            text: 'More Like',
                            fontWeight: direction == Axis.horizontal
                                ? FontWeight.w700
                                : FontWeight.w300,
                            fontSize: direction == Axis.horizontal ? 24 : 16,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
