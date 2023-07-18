// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fugoku/core/mock_data.dart';

import 'package:fugoku/core/widgets/text.dart';

class OnPlayingWidget extends StatelessWidget {
  const OnPlayingWidget({
    Key? key,
    required this.onTap,
    required this.mockData,
  }) : super(key: key);
  final VoidCallback onTap;
  final DataModel mockData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 40, 3, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                         image: AssetImage(
                      "assets/images/${mockData.imagePath ?? ""}",
                    ),
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: "${mockData.songTitle} . ${mockData.artistName}",
                      fontWeight: FontWeight.w600,
                    ),
                   const SizedBox(height: 5),
                   const AppText(
                      text: "TRAVIS'S MACBOOK PRO",
                      fontColor: Colors.green,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                CupertinoIcons.device_laptop,
                color: Colors.green,
                size: 30,
              ),
              const SizedBox(width: 15),
              const Icon(
                CupertinoIcons.heart,
                size: 30,
              ),
              const SizedBox(width: 15),
              const Icon(
                Icons.pause,
                size: 30,
              ),
              const SizedBox(width: 15),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: LinearProgressIndicator(
              value: 0.10,
              backgroundColor: Colors.white.withOpacity(0.2),
              color: const Color.fromARGB(255, 255, 255, 255),
              minHeight: 3,
            ),
          ),
        ],
      ),
    );
  }
}
