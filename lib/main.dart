import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color1, Color color2, int noteNumber}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                color1,
                color2,
              ]),
        ),
        child: FlatButton(
//          color: color,
          onPressed: () {
            playSound(noteNumber);
          },
        ),
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
              buildKey(color1: Colors.red, color2: Colors.black, noteNumber: 1),
              buildKey(
                  color1: Colors.orange, color2: Colors.black, noteNumber: 2),
              buildKey(
                  color1: Colors.yellow, color2: Colors.black, noteNumber: 3),
              buildKey(
                  color1: Colors.green, color2: Colors.black, noteNumber: 4),
              buildKey(
                  color1: Colors.teal, color2: Colors.black, noteNumber: 5),
              buildKey(
                  color1: Colors.blue, color2: Colors.black, noteNumber: 6),
              buildKey(
                  color1: Colors.purple, color2: Colors.black, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
