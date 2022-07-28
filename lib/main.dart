import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatefulWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  State<MusicWidget> createState() => _MusicWidgetState();
}

class _MusicWidgetState extends State<MusicWidget> {
  AudioPlayer audioPlayer = AudioPlayer();
  void playMusic({required int number}) {
    audioPlayer.setSourceAsset("assets_music-$number.mp3");
    audioPlayer.resume();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text('نغمات'),
          backgroundColor: Colors.purple,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 1);
              },
              child: const Text(
                'samsung',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 2);
              },
              child: const Text(
                'nokia',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 3);
              },
              child: const Text(
                'Iphone',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 4);
              },
              child: const Text(
                'huwawi',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 5);
              },
              child: const Text(
                'xiaomi',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 6);
              },
              child: const Text(
                'redme',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                playMusic(number: 7);
              },
              child: const Text(
                'honor',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              )),
        ]),
      ),
    );
  }
}
