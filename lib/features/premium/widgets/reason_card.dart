
import 'package:flutter/material.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/premium/widgets/reason_text_tile.dart';

class ReasonCard extends StatelessWidget {
  const ReasonCard({
    Key? key,
    this.cardCheckItem,
  }) : super(key: key);

  final List? cardCheckItem;

  @override
  Widget build(BuildContext context) {
    const List<String> cardList = [
      "Listen offline without Wi-Fi or mobile data",
      "play songs in any order",
      "Music without ad interruptions",
      "Higher sound quality",
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 30, 27, 27),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: AppText(
              text: 'Why join Premium?',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontColor: Colors.grey[300],
            ),
          ),
          Divider(
            color: Colors.grey[700],
          ),
          for (var i in cardList) // cardCheckItem
            ReasonTextTile(
              titleText: i,
            ),
        ],
      ),
    );
  }
}