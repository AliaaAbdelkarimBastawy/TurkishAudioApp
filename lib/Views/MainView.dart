import 'package:audio_app/Models/AudioModel.dart';
import 'package:audio_app/Services/AudioList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/listItem.dart';

class MainView extends StatefulWidget {
   MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  bool Open = false;
   List<Audio> SongsList =  [
    Audio(Name: 'Aramam', Image: 'assets/images/ARAMAM.jpeg', Song: 'assets/songs/ARAMAM.mp3', isOpen: false),
    Audio(Name: 'Ateşe düştüm', Image: 'assets/images/atesedustum.jpeg', Song: 'assets/songs/Atese.mp3',isOpen: false),
    Audio(Name: 'Leila', Image: 'assets/images/leila.jpeg', Song: 'assets/songs/leila.mp3',isOpen: false,),
    Audio(Name: 'Nereden Bileceksiniz', Image: 'assets/images/NeredenBileceksiniz.jpeg',
        Song: 'assets/songs/NeredenBileceksiniz .mp3',isOpen: false),
    Audio(Name: 'Sevmedim Deme', Image: 'assets/images/SevmedimDeme.jpeg', Song: 'assets/songs/SevmedimDeme.mp3',isOpen: false),
    Audio(Name: 'Uslanmıyor Bu', Image: 'assets/images/UslanmıyorBu.jpeg', Song: 'assets/songs/UslanmiyorBu.mp3',isOpen: false),
    Audio(Name: 'Yaramızda Kalsın', Image: 'assets/images/YaramızdaKalsın.jpeg', Song: 'assets/songs/YaramizdaKalsin.mp3',isOpen: false),
    Audio(Name: 'Çukurda Yandı', Image: 'assets/images/CukurdaYandi.jpeg', Song: 'assets/songs/CukurdaYandi.mp3',isOpen: false),

    Audio(Name: 'Aramam', Image: 'assets/images/ARAMAM.jpeg', Song: 'assets/songs/ARAMAM.mp3',isOpen: false),
    Audio(Name: 'Ateşe düştüm', Image: 'assets/images/atesedustum.jpeg', Song: 'assets/songs/Atese.mp3',isOpen: false),
    Audio(Name: 'Leila', Image: 'assets/images/leila.jpeg', Song: 'assets/songs/leila.mp3',isOpen: false),

    Audio(Name: 'Aramam', Image: 'assets/images/ARAMAM.jpeg', Song: 'assets/songs/ARAMAM.mp3'),
    Audio(Name: 'Ateşe düştüm', Image: 'assets/images/atesedustum.jpeg', Song: 'assets/songs/Atese.mp3'),
    Audio(Name: 'Leila', Image: 'assets/images/leila.jpeg', Song: 'assets/songs/leila.mp3'),

    // Add other audio items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Audio App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: SongsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListItem(model:SongsList[index], index: index,
                  onPressed: () {
                      for(int i =0; i<AudioListService.audioServiceList.length; i++)
                      {
                        if(i != index)
                        {
                          AudioListService.audioServiceList[i].stopAudio();
                          AudioListService.audioFlagList[i] = false;

                        }
                        else if(AudioListService.audioFlagList[i] == true)
                        {

                          AudioListService.audioServiceList[i].stopAudio();
                          AudioListService.audioFlagList[i] = false;

                        }

                        else
                          {
                            AudioListService.audioServiceList[i].playAudio();
                            AudioListService.audioFlagList[i] = true;
                          }

                      }
                      // widget.model.isOpen = !widget.model.isOpen;
                      // widget.model.isOpen? audioService.playAudio() : audioService.stopAudio();

                      setState(() {

                      });
                    }, isOpen: AudioListService.audioFlagList[index],

                 );
              },
            ),


          ),
        ],
      ),
    );
  }
}
