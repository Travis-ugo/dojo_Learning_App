import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class MediaAppBar extends StatelessWidget {
  const MediaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              CupertinoIcons.chevron_down,
              size: 25,
            ),
          ),
          Column(
            children: const [
              AppText(
                text: 'PLAYING FROM SEARCH',
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
              SizedBox(height: 10),
              AppText(
                text: 'Recent Searches',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ],
          ),
          const Icon(
            Icons.more_vert,
            size: 25,
          ),
        ],
      ),
    );
  }
}
