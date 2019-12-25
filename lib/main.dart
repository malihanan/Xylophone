import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getButton(Colors.red, 'note1.wav'),
              getButton(Colors.orange, 'note2.wav'),
              getButton(Colors.yellow, 'note3.wav'),
              getButton(Colors.green, 'note4.wav'),
              getButton(Colors.indigo, 'note5.wav'),
              getButton(Colors.blue, 'note6.wav'),
              getButton(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
  Expanded getButton(Color color, String audio) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play(audio);
        },
        color: color,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}