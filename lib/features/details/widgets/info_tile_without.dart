import 'package:flutter/material.dart';

class InfoTileWithoutIcon extends StatelessWidget {
  const InfoTileWithoutIcon({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.action,
  });

  final String title;
  final String subTitle;
  final VoidCallback onTap;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('SOSO'),
                SizedBox(height: 10),
                Text('Black sherif and friends'),
              ],
            ),
            GestureDetector(
              onTap: action, 
              child: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
