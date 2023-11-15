import 'package:audio_app/Models/AudioModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/listItem.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  final List<Audio> SongsList = const [
    Audio(Name: 'Aramam', Image: 'assets/images/ARAMAM.jpeg', Song: 'assets/songs/ARAMAM.mp3'),
    Audio(Name: 'Ateşe düştüm', Image: 'assets/images/atesedustum.jpeg', Song: 'assets/songs/Atese.mp3'),
    Audio(Name: 'Leila', Image: 'assets/images/leila.jpeg', Song: 'assets/songs/leila.mp3'),
    Audio(Name: 'Nereden Bileceksiniz', Image: 'assets/images/NeredenBileceksiniz.jpeg', Song: 'assets/songs/NeredenBileceksiniz .mp3'),
    Audio(Name: 'Sevmedim Deme', Image: 'assets/images/SevmedimDeme.jpeg', Song: 'assets/songs/SevmedimDeme.mp3'),
    Audio(Name: 'Uslanmıyor Bu', Image: 'assets/images/UslanmıyorBu.jpeg', Song: 'assets/songs/UslanmiyorBu.mp3'),
    Audio(Name: 'Yaramızda Kalsın', Image: 'assets/images/YaramızdaKalsın.jpeg', Song: 'assets/songs/YaramizdaKalsin.mp3'),
    Audio(Name: 'Çukurda Yandı', Image: 'assets/images/CukurdaYandi.jpeg', Song: 'assets/songs/CukurdaYandi.mp3'),

    Audio(Name: 'Aramam', Image: 'assets/images/ARAMAM.jpeg', Song: 'assets/songs/ARAMAM.mp3'),
    Audio(Name: 'Ateşe düştüm', Image: 'assets/images/atesedustum.jpeg', Song: 'assets/songs/Atese.mp3'),
    Audio(Name: 'Leila', Image: 'assets/images/leila.jpeg', Song: 'assets/songs/leila.mp3'),

    // Add other audio items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                return ListItem(model:SongsList[index],);
              },
            ),
          ),
        ],
      ),
    );
  }
}
