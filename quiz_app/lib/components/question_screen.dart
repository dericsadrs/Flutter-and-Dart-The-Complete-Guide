import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
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
        )));
  }
}