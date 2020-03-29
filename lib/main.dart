import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioCache();

  void playSound(int soundNumber){
    player.play('note$soundNumber.wav');//not in setState because nothing will change in UI
  }

  Widget buildKey({int soundKey,Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: ()=>playSound(soundKey),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundKey: 1,color: Colors.red),
              buildKey(soundKey: 2,color: Colors.amber),
              buildKey(soundKey: 3,color: Colors.teal),
              buildKey(soundKey: 4,color: Colors.purple),
              buildKey(soundKey: 5,color: Colors.green),
              buildKey(soundKey: 6,color: Colors.blue),
              buildKey(soundKey: 7,color: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
