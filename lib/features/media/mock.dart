// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';

class MockAudioPlayer extends StatefulWidget {
  const MockAudioPlayer({super.key});

  @override
  State<MockAudioPlayer> createState() => _MockAudioPlayerState();
}

class _MockAudioPlayerState extends State<MockAudioPlayer> {
  final _audioPlayer = AudioPlayer();

  // Stream<PositionData> get _positionDataStream =>
  // Rx.combineLatest3<Duration, Duration, Duration?, PositionData> (
  //     _audioPlayer.bufferedPosition,
  //   _audioPlayer.positionStream,
  //   _audioPlayer.durationStream,
  //   (position, bufferedPosition)
  // );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  void init() async {
    await _audioPlayer.setAudioSource(
      AudioSource.asset(
        "assets/audio/alien_girl.mp4",
        tag: MediaItem(
          // Specify a unique ID for each media item:
          id: '1',
          // Metadata to display in the notification:
          album: "Beautiful and Brutal Yard",
          title: "Alien Girl",
          artUri: Uri.file("assets/images/BABY.webp"),
        ),
      ),
    );
    _audioPlayer.bufferedPosition;
    _audioPlayer.positionStream;
    _audioPlayer.durationStream;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ControlScreen(
              audioPlayer: _audioPlayer,
            ),
          ),
          const SizedBox(height: 200),
          TextButton(
            onPressed: () {
              print(
                  """ this is the bufferd Position: ${_audioPlayer.bufferedPosition}, 
                      this is the Position Stream: ${_audioPlayer.positionStream}, 
                  
                  """);
            },
            child: Text("CHech buffer"),
          ),
        ],
      ),
    );
  }
}

class PositionData {
  final Duration bufferedPosition;
  final Duration position;
  final Duration duration;

  PositionData({
    required this.bufferedPosition,
    required this.position,
    required this.duration,
  });
}

class ControlScreen extends StatelessWidget {
  const ControlScreen({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;

        if (!(playing ?? false)) {
          return IconButton(
            icon: const Icon(
              CupertinoIcons.play,
              color: Colors.white,
              size: 80,
            ),
            onPressed: audioPlayer.play,
          );
        } else if (processingState != ProcessingState.completed ||
            processingState != ProcessingState.buffering) {
          return IconButton(
            icon: const Icon(
              CupertinoIcons.pause,
              color: Colors.white,
              size: 80,
            ),
            onPressed: audioPlayer.pause,
          );
        }
        return IconButton(
          icon: const Icon(
            CupertinoIcons.play,
            color: Colors.white,
            size: 80,
          ),
          onPressed: audioPlayer.play,
        );
      },
    );
  }
}
