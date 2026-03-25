import '../media_factory.dart';
import '../products/audio_player.dart';
import '../products/video_player.dart';
import '../products/player_controller.dart';
import '../platforms/android_audio_player.dart';
import '../platforms/android_video_player.dart';

class AndroidFactory implements MediaFactory {
  @override
  AudioPlayerWidget createAudioPlayer() => AndroidAudioPlayer();

  @override
  VideoPlayerWidget createVideoPlayer() => AndroidVideoPlayer();

  @override
  PlayerController createController() =>
      throw UnimplementedError(); // optional
}