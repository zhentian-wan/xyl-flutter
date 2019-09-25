import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded createSoundBtn({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createSoundBtn(color: Colors.red, soundNum: 1),
              createSoundBtn(color: Colors.orange, soundNum: 2),
              createSoundBtn(color: Colors.yellow, soundNum: 3),
              createSoundBtn(color: Colors.green, soundNum: 4),
              createSoundBtn(color: Colors.cyan, soundNum: 5),
              createSoundBtn(color: Colors.blue, soundNum: 6),
              createSoundBtn(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
