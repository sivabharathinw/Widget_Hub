import 'media_factory.dart';
import '../products/audio_player.dart';
import '../products/video_player.dart';
import '../products/player_controller.dart';
import '../platforms/web_audio_player.dart';
import '../platforms/web_video_player.dart';

class WebFactory implements MediaFactory {
  @override
  AudioPlayerWidget createAudioPlayer() => WebAudioPlayer();

  @override
  VideoPlayerWidget createVideoPlayer() => WebVideoPlayer();

  @override
  PlayerController createController() =>
      throw UnimplementedError(); // optional
}