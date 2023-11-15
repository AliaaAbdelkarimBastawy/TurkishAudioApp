import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioService {
   var _assetsAudioPlayer = AssetsAudioPlayer();
   bool isOpen = false;

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




