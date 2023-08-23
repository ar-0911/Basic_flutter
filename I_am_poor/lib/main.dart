import 'package:flutter/material.dart';

void main() {
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightGreen[900],
          appBar: AppBar(
            backgroundColor: Colors.lightGreen[700],
            title: const Center(
                child: Text("I Am Poor")
            ),
          ),
          body:const Center(
            child: Image(
              image: AssetImage("images/coal.png"),
            ),
          ),
        ),
      ),
    );
}

