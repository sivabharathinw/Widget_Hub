import '../products/video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IosVideoPlayer implements VideoPlayerWidget {
  late VideoPlayerController _controller;

  @override
  Widget build(String url) {
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) => _controller.play());
    return SizedBox(
      width: 300,
      height: 200,
      child: VideoPlayer(_controller),
    );
  }
}