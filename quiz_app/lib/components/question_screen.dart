import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer,
    });
    
  final void Function( String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
    currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(currentQuestion.text, style:const TextStyle(
          color: Colors.white
        ),),
        
        //Padding
        const Padding(padding: EdgeInsets.all(20)),

        ...currentQuestion.getShuffledAnswers().map((answer){
          return AnswerButton(answerText: answer, onTap: () {
            answerQuestion(answer);
          } );
        })

        // AnswerButton(
        // answerText: currentQuestion.answers[0],
        // onTap: () {},),
        // AnswerButton(
        // answerText: currentQuestion.answers[1],
        // onTap: () {},),
        // AnswerButton(
        // answerText: currentQuestion.answers[2],
        // onTap: () {},),
        // AnswerButton(
        // answerText: currentQuestion.answers[3],
        // onTap: () {},),
      ],),
    );
  }
}