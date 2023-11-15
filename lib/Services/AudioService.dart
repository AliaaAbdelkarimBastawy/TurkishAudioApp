import 'package:assets_audio_player/assets_audio_player.dart';

class AudioService {
  static final _assetsAudioPlayer = AssetsAudioPlayer();

    static Future<void> playAudio (String audio)
  async {
     await _assetsAudioPlayer.open(
      Audio(audio),
       autoStart: true
    );
  }


  static void  stopAudio (String audio) async
  {
    await _assetsAudioPlayer.open(
        Audio(audio),
        autoStart: false
    );
  }

}
