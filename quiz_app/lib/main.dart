import 'package:flutter/material.dart';
import 'package:quiz_app/components/start_screen.dart';



const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp( 
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 203, 86, 224),
                Color.fromARGB(255, 74, 11, 85),
            ],
            begin: beginAlignment,
            end:  endAlignment,
            )
          ),
          child: StartScreen()),)));
}