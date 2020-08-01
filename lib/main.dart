import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int a){
    final player=AudioCache();
    player.play('note$a.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: (){
                  playsound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  playsound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  playsound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green[900],
                onPressed: (){
                  playsound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.lightGreen,
                onPressed: (){
                  playsound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.lightBlue,
                onPressed: (){
                  playsound(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: (){
                  playsound(7);
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}

