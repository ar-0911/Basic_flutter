import 'package:flutter/material.dart';
//import 'package:audioplayers/src/audio_cache.dart';  //flutter cache repair incase package does not download
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone1App());
// => is used when only one line is there between curly braces
/* for example
int add() {
  return 5+2;
}
int add() => 5+2
are the same
*/

class Xylophone1App extends StatefulWidget {
  const Xylophone1App({Key? key}) : super(key: key);

  @override
  State<Xylophone1App> createState() => _Xylophone1AppState();
}

class _Xylophone1AppState extends State<Xylophone1App> {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey(Color c, int soundNumber){
    return Expanded(
      child: TextButton(
        onPressed: (){
          setState(() {
            playSound(soundNumber);
          });
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: c,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(Colors.red,1),
              buildkey(Colors.lightBlue,2),
              buildkey(Colors.green,3),
              buildkey(Colors.yellow,4),
              buildkey(Colors.brown,5),
              buildkey(Colors.orange,6),
              buildkey(Colors.deepPurple,7),
            ],
          ),
        ),
      ),
    );
  }
}



