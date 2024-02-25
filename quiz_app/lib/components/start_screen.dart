import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(

      // Column
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', 
        width: 250,),

        const SizedBox(height: 80),

        // Text
        const Text('Learn Flutter the Fun Way',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ), ),

        const SizedBox(height: 30,),

        // Button 
        OutlinedButton(onPressed: () {}, 
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white 
        ),
        child: const Text("Start Quiz"))
      ],
    ));
  }
}