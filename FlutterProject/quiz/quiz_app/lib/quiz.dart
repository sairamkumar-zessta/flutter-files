import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int reqIndex;
  final Function questionAnswer;
  const Quiz(
      {required this.questions,
      required this.questionAnswer,
      required this.reqIndex,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[reqIndex]['questionText']) as String,
        ),
        ...(questions[reqIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => questionAnswer(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
