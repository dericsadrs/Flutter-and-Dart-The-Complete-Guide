import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/components/question_screen.dart';
import 'package:quiz_app/components/start_screen.dart';



const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'start-screen';
  void switchScreen() {
  setState(() {
      activeScreen = activeScreen;
  });
  }

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
          child: activeScreen == 'start-screen' ? StartScreen(switchScreen): const QuestionScreen()),));
  }
}