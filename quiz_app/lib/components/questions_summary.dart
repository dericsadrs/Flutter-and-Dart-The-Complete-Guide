import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) => Row(children: [
          Text(((data['question_index'] as int)+ 1).toString()),
          Column(children: [
            //Text
            Text(data['question'] as String),
            //Padding
            const Padding(padding: EdgeInsets.all(10)),
             //Text
            Text(data['correct_answer'] as String),
             //Text
            Text(data['user_answer'] as String),
          ],),
      ],)).toList()
    );
  }
}