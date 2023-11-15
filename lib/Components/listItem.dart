import 'package:audio_app/Services/AudioService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audio_app/Services/AudioList.dart';

import '../Models/AudioModel.dart';

class ListItem extends StatefulWidget {
  bool isOpen;
  Audio model;
  int index;
  void Function()? onPressed;

   ListItem({Key? key, required this.model,
     required this.index,
     required this.isOpen,
     required this.onPressed,
   }) : super(key: key);

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
    AudioListService.audioServiceList.add(audioService);
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
            child: Card(
              color: Colors.black,
              elevation: 2,
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
                  height: 200,width: 100,),
                title: Text(widget.model.Name, style: TextStyle(fontSize: 18, color: Colors.white),),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: (IconButton(icon: AudioListService.audioFlagList[widget.index]?
                        Icon(Icons.pause, color: Colors.white)
                      : Icon(Icons.play_arrow, color: Colors.white),
                    onPressed: widget.onPressed,

                  )),
                ),
              ),
            ),
          ),
        ),
      );
    }


}
