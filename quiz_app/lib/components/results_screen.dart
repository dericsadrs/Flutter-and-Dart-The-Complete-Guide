import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/components/results_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswers});

  List<Map<String, Object>> getSummaryData() {
      final List<Map<String,Object>> summary = [];
      
      for(var i = 0; i <chooseAnswers.length; i++) {
        summary.add({
          'questions_index' : i,
          'question' : questions[i].text,
          'correct_answer' : questions[i].answers[0],
          'user_answer': chooseAnswers[i]
        });
      }     
      return summary;
  } 
  final List<String> chooseAnswers; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Text('You answered X of out Y Correctly'),
              const Padding(padding: EdgeInsets.all(20)),
              // Pass the data to Question Summary Widget then returns a Column Widget with data
              QuestionsSummary(getSummaryData()),
              const Padding(padding: EdgeInsets.all(20)),
              TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
              
            ],),
        ),
    );
  }
}