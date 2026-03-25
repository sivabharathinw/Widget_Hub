import '../products/audio_player.dart';
import '../products/video_player.dart';
import '../products/player_controller.dart';

abstract class MediaFactory {
  AudioPlayerWidget createAudioPlayer();
  VideoPlayerWidget createVideoPlayer();
  PlayerController createController();
}


