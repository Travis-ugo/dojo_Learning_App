// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/widgets/text.dart';

class TitleAndFavourite extends StatelessWidget {
  const TitleAndFavourite({
    Key? key,
    required this.musicTitle,
    required this.artistName,
  }) : super(key: key);

  final String musicTitle;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              AppText(
                text: musicTitle,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
             const SizedBox(height: 8),
              AppText(
                text: artistName,
                fontColor: Colors.grey,
                fontSize: 18,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              CupertinoIcons.heart,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
