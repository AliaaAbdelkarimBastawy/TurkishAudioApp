import 'package:audio_app/Services/AudioService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/AudioModel.dart';

class ListItem extends StatefulWidget {
  Audio model;
   ListItem({Key? key, required this.model}) : super(key: key);

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isOpen = false;
  AudioService audioService = new AudioService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioService.initializeAudio(widget.model.Song);
  }
  @override
  Widget build(BuildContext context) {

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10)
          ),

          child: MediaQuery(
            data: MediaQueryData(padding: EdgeInsets.zero),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 0),
              leading: Container(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft:  Radius.circular(10),
                    ),
                    child: Image.asset(
                        widget.model.Image),
                  ),
                ),
                height: 100,width: 100,),
              title: Text(widget.model.Name, style: TextStyle(fontSize: 18, color: Colors.white),),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: (IconButton(icon: isOpen? Icon(Icons.pause, color: Colors.white) : Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: () {
                  setState(() {
                    isOpen = !isOpen;
                    isOpen? audioService.playAudio() : audioService.stopAudio();
                  });

                  },)),
              ),
            ),
          ),
        ),
      );
    }


}
