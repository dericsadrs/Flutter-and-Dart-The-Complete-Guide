import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/models/quiz_questions.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('The question...', style: TextStyle(
          color: Colors.white
        ),),
        
        //Padding
        const Padding(padding: EdgeInsets.all(20)),
        AnswerButton(
        answerText: "Answer 1",
        onTap: () {},),
      ],),
    );
  }
}