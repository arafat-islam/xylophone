import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final assetsAudioPlayer = AssetsAudioPlayer();

      assetsAudioPlayer.open(
        Audio("assets/note$soundNumber.wav"),
      );
      assetsAudioPlayer.play();
    }

    Widget buildKey({required Color color, required int soundNumber}) {
      return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: color),
            onPressed: () async {
              playSound(soundNumber);
            },
            child: const Text('')),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
