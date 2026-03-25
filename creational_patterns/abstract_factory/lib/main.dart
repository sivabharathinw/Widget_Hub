import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'factories/android_factory.dart';
import 'factories/ios_factory.dart';
import 'factories/web_factory.dart';
import 'factories/media_factory.dart';
import 'products/audio_player.dart';
import 'products/video_player.dart';

void main() {
  runApp(const MediaPlayerApp());
}

class MediaPlayerApp extends StatelessWidget {
  const MediaPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaScreen(),
    );
  }
}

class MediaScreen extends StatelessWidget {
  MediaScreen({super.key});

  final String audioUrl =
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
  final String videoUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';

  // to get correct factory method based on platform

  MediaFactory getFactory() {
    if (kIsWeb) {
      return WebFactory();
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          return IosFactory();
        default:
          return AndroidFactory();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final factory = getFactory();
    final AudioPlayerWidget audioPlayer = factory.createAudioPlayer();
    final VideoPlayerWidget videoPlayer = factory.createVideoPlayer();

    return Scaffold(
      appBar: AppBar(title: const Text("Abstract Factory Media Player")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            audioPlayer.build(audioUrl),
            const SizedBox(height: 20),
            videoPlayer.build(videoUrl),
          ],
        ),
      ),
    );
  }
}