import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback questionAnswer;
  final String answerText;
  const Answer(this.questionAnswer, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: questionAnswer,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white), //ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.grey)),
        child: Text(answerText,
            style: const TextStyle(fontSize: 15, color: Colors.yellow)),
      ),
    );
  }
}
