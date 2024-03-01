import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/components/question_screen.dart';
import 'package:quiz_app/components/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
  setState(() {
      activeScreen = 'questions-screen';
  });
  }

  void chooseAnswer ( String answer ) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = 'start-screen';
      });
    }
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
          child: activeScreen == 'start-screen' ? StartScreen(switchScreen):  QuestionScreen(onSelectAnswer: chooseAnswer,)),
          )
          );
  }
}