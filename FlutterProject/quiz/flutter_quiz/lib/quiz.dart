import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int reqIndex;
  final Function questionAnswer;
  const Quiz(
      {required this.questions,
      required this.reqIndex,
      required this.questionAnswer,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[reqIndex]['que'] as String),
      ...questions[reqIndex]['answ'].map((e) {
        return Answer(() {
          questionAnswer(e['score']);
        }, e['text']);
      }).toList()
    ]);
  }
}
