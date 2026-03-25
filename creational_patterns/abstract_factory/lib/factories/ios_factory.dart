import 'media_factory.dart';
import '../products/audio_player.dart';
import '../products/video_player.dart';
import '../products/player_controller.dart';
import '../platforms/ios_audio_player.dart';
import '../platforms/ios_video_player.dart';

class IosFactory implements MediaFactory {
  @override
  AudioPlayerWidget createAudioPlayer() => IosAudioPlayer();

  @override
  VideoPlayerWidget createVideoPlayer() => IosVideoPlayer();

  @override
  PlayerController createController() =>
      throw UnimplementedError(); // optional
}