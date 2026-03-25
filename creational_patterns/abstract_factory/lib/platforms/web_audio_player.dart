import '../products/audio_player.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class WebAudioPlayer implements AudioPlayerWidget {
  final AudioPlayer _player = AudioPlayer();

  @override
  Widget build(String url) {
    _player.setUrl(url);
    return ElevatedButton(
      onPressed: () => _player.play(),
      child: const Text("Play Audio (Web)"),
    );
  }
}