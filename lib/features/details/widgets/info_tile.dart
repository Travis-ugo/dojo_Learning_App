import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.index,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.action,
  });

  final int index;
  final String image;
  final String title;
  final String subTitle;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$index'),
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              image: DecorationImage(
                image: AssetImage("assets/images/$image"),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: title,
              ),
              const SizedBox(height: 10),
              AppText(text: subTitle),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
