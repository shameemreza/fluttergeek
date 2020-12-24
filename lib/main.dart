import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(TingTong());

class TingTong extends StatelessWidget {
  void playTingTong(int tingtongNumber) {
    final player = AudioCache();
    player.play('note$tingtongNumber.wav');
  }

  Expanded buildKey({Color color, int tingtongNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playTingTong(tingtongNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('TingTong'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, tingtongNumber: 1),
              buildKey(color: Colors.orange, tingtongNumber: 2),
              buildKey(color: Colors.yellow, tingtongNumber: 3),
              buildKey(color: Colors.green, tingtongNumber: 4),
              buildKey(color: Colors.teal, tingtongNumber: 5),
              buildKey(color: Colors.blue, tingtongNumber: 6),
              buildKey(color: Colors.purple, tingtongNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
