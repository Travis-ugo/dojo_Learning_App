
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MediaPauseAndPlayWidget extends StatelessWidget {
  const MediaPauseAndPlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          CupertinoIcons.shuffle,
          size: 30,
        ),
        const Spacer(),
        const Icon(
          Icons.skip_previous_sharp,
          size: 45,
        ),
        Container(
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
          decoration:
              BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
          child: const Icon(
            Icons.pause,
            color: Colors.black,
            size: 45,
          ),
        ),
        const Icon(
          Icons.skip_next_sharp,
          size: 45,
        ),
        const Spacer(),
        const Icon(
          Icons.repeat,
          size: 30,
        ),
      ],
    );
  }
}