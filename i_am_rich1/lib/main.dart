import 'package:flutter/material.dart';

// main function is starting point of all flutter apps
void main() {
  runApp(
    MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Center(
            child:Text("I Am Rich"),
          ),
        ),
        body:const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
