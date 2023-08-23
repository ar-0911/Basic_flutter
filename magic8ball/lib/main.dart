import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: Ballpage(),
      
    ),
  );
}

class Ballpage extends StatelessWidget {
  const Ballpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
       backgroundColor: Colors.black12,
       title:const Center(
         child: Text(
           'MAGIC 8 BALL',
           style: TextStyle(
             color: Colors.white,
           ),
         ),
       ),
     ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(6);
          });
        },
        child: Image.asset(
         'images/balla$ballNumber.jpg'
        ),
      ),
    );
  }
}

