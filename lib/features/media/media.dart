// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fugoku/core/mock_data.dart';
import 'package:fugoku/core/widgets/text.dart';
import 'package:fugoku/features/media/widgets/media_app_bar.dart';
import 'package:fugoku/features/media/widgets/media_pause_and_play.dart';
import 'package:fugoku/features/media/widgets/sound_seek_progress.dart';
import 'package:fugoku/features/media/widgets/title_favourite.dart';

class MediaView extends StatelessWidget {
  final DataModel mockData;
  const MediaView({
    Key? key,
    required this.mockData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              mockData.color,
              Colors.transparent,
            ],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            const SizedBox(height: 20),
            const MediaAppBar(),
            Hero(
              tag: mockData.imagePath ?? "hero",
              child: Container(
                height: 350,
                width: 300,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/${mockData.imagePath ?? ""}",
                    ),
                  ),
                ),
              ),
            ),
            TitleAndFavourite(
              musicTitle: mockData.songTitle ?? "NO Sound",
              artistName: mockData.artistName ?? "No Name",
            ),
            const SoundSeekProgress(),
            const MediaPauseAndPlayWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: const [
                  Icon(
                    CupertinoIcons.device_laptop,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 15),
                  AppText(
                    text: "TRAVIS'S MACBOOK PRO",
                    fontColor: Colors.greenAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),
                  Icon(Icons.share_outlined),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AppText(
                        text: 'Lyrics',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.grey[700],
                        child: const Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.grey[700],
                        child: const Icon(
                          Icons.expand_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
