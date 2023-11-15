import 'package:assets_audio_player/assets_audio_player.dart';

class AudioService {
   var _assetsAudioPlayer = AssetsAudioPlayer();

   Future<void> initializeAudio (String audio)
  async {
    await _assetsAudioPlayer.open(
        Audio(audio),
        autoStart: false
    );
  }


   void playAudio ()
  {
    _assetsAudioPlayer.play();
  }

   void stopAudio ()
  {
    _assetsAudioPlayer.stop();
  }


}
