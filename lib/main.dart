import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playXylo(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded addXyloButton(Color btnColor, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: () {
          playXylo(soundNumber);
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
            children: [
              addXyloButton(Colors.pink, 1),
              addXyloButton(Colors.orange, 2),
              addXyloButton(Colors.yellow, 3),
              addXyloButton(Colors.green, 4),
              addXyloButton(Colors.teal, 5),
              addXyloButton(Colors.blue, 6),
              addXyloButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
