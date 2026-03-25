import '../products/audio_player.dart';
import '../products/video_player.dart';
import '../products/player_controller.dart';
//this defines what are the methods the factoruy dhould have
//this is the abstract factory
abstract class MediaFactory {
  AudioPlayerWidget createAudioPlayer();
  VideoPlayerWidget createVideoPlayer();
  PlayerController createController();
}


